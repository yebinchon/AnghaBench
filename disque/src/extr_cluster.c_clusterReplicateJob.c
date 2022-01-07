
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int uint32_t ;
typedef unsigned char* sds ;
struct TYPE_20__ {scalar_t__ nodes_confirmed; int nodes_delivered; } ;
typedef TYPE_5__ job ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_21__ {int * link; int name; } ;
typedef TYPE_6__ clusterNode ;
typedef int clusterMsgDataJob ;
struct TYPE_17__ {unsigned char* jobs_data; void* datasize; void* numjobs; } ;
struct TYPE_18__ {TYPE_2__ serialized; } ;
struct TYPE_19__ {TYPE_3__ jobs; } ;
struct TYPE_22__ {int * mflags; TYPE_4__ data; void* totlen; } ;
typedef TYPE_7__ clusterMsg ;
typedef int buf ;
struct TYPE_23__ {TYPE_1__* cluster; } ;
struct TYPE_16__ {int reachable_nodes_count; TYPE_6__** reachable_nodes; } ;


 int CLUSTERMSG_FLAG0_NOREPLY ;
 int CLUSTERMSG_TYPE_REPLJOB ;
 scalar_t__ DICT_OK ;
 int SER_MESSAGE ;
 int clusterBuildMessageHdr (TYPE_7__*,int ) ;
 int clusterSendMessage (int *,unsigned char*,int) ;
 int clusterShuffleReachableNodes () ;
 scalar_t__ dictAdd (int ,int ,TYPE_6__*) ;
 scalar_t__ dictFind (scalar_t__,TYPE_6__*) ;
 int * dictGetIterator (int ) ;
 TYPE_6__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 void* htonl (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 TYPE_6__* myself ;
 int sdsempty () ;
 int sdsfree (unsigned char*) ;
 int sdslen (unsigned char*) ;
 unsigned char* serializeJob (int ,TYPE_5__*,int ) ;
 TYPE_8__ server ;
 int zfree (unsigned char*) ;
 unsigned char* zmalloc (int) ;

int clusterReplicateJob(job *j, int repl, int noreply) {
    int i, added = 0;

    if (repl <= 0) return 0;


    clusterShuffleReachableNodes();
    for (i = 0; i < server.cluster->reachable_nodes_count; i++) {
        clusterNode *node = server.cluster->reachable_nodes[i];

        if (node->link == ((void*)0)) continue;
        if (dictAdd(j->nodes_delivered,node->name,node) == DICT_OK) {

            added++;
            if (--repl == 0) break;
        }
    }


    unsigned char buf[sizeof(clusterMsg)], *payload;
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen;

    sds serialized = serializeJob(sdsempty(),j,SER_MESSAGE);

    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += sizeof(clusterMsgDataJob) -
              sizeof(hdr->data.jobs.serialized.jobs_data) +
              sdslen(serialized);

    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_REPLJOB);
    hdr->data.jobs.serialized.numjobs = htonl(1);
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


    dictIterator *di = dictGetIterator(j->nodes_delivered);
    dictEntry *de;

    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        if (node == myself) continue;



        int acked = j->nodes_confirmed && dictFind(j->nodes_confirmed,node);
        if (noreply || acked) {
            hdr->mflags[0] |= CLUSTERMSG_FLAG0_NOREPLY;
        } else {
            hdr->mflags[0] &= ~CLUSTERMSG_FLAG0_NOREPLY;
        }




        if (node->link && !(acked && added == 0))
            clusterSendMessage(node->link,payload,totlen);
    }
    dictReleaseIterator(di);

    if (payload != buf) zfree(payload);
    return added;
}
