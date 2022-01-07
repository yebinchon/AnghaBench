
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int uint32_t ;
typedef unsigned char* sds ;
typedef int job ;
struct TYPE_11__ {int link; int name; } ;
typedef TYPE_4__ clusterNode ;
typedef int clusterMsgDataJob ;
struct TYPE_8__ {unsigned char* jobs_data; void* datasize; void* numjobs; } ;
struct TYPE_9__ {TYPE_1__ serialized; } ;
struct TYPE_10__ {TYPE_2__ jobs; } ;
struct TYPE_12__ {TYPE_3__ data; void* totlen; } ;
typedef TYPE_5__ clusterMsg ;
typedef int buf ;


 int CLUSTERMSG_TYPE_YOURJOBS ;
 int LL_VERBOSE ;
 int SER_MESSAGE ;
 int clusterBuildMessageHdr (TYPE_5__*,int ) ;
 int clusterSendMessage (int ,unsigned char*,int) ;
 void* htonl (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* sdsempty () ;
 int sdsfree (unsigned char*) ;
 int sdslen (unsigned char*) ;
 unsigned char* serializeJob (unsigned char*,int *,int ) ;
 int serverLog (int ,char*,int,int ) ;
 int zfree (unsigned char*) ;
 unsigned char* zmalloc (int) ;

void clusterSendYourJobs(clusterNode *node, job **jobs, uint32_t count) {
    unsigned char buf[sizeof(clusterMsg)], *payload;
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen, j;

    if (!node->link) return;

    serverLog(LL_VERBOSE,"Sending %d jobs to %.40s", (int)count,node->name);

    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += sizeof(clusterMsgDataJob) -
              sizeof(hdr->data.jobs.serialized.jobs_data);

    sds serialized = sdsempty();
    for (j = 0; j < count; j++)
        serialized = serializeJob(serialized,jobs[j],SER_MESSAGE);
    totlen += sdslen(serialized);

    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_YOURJOBS);
    hdr->data.jobs.serialized.numjobs = htonl(count);
    hdr->data.jobs.serialized.datasize = htonl(sdslen(serialized));
    hdr->totlen = htonl(totlen);

    if (totlen < sizeof(buf)) {
        payload = buf;
    } else {
        payload = zmalloc(totlen);
        memcpy(payload,buf,sizeof(clusterMsg));
        hdr = (clusterMsg*) payload;
    }
    memcpy(hdr->data.jobs.serialized.jobs_data,serialized,sdslen(serialized));
    sdsfree(serialized);
    clusterSendMessage(node->link,payload,totlen);
    if (payload != buf) zfree(payload);
}
