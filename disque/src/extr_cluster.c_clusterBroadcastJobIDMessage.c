
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_12__ {scalar_t__ link; } ;
typedef TYPE_4__ clusterNode ;
struct TYPE_9__ {int aux; int id; } ;
struct TYPE_10__ {TYPE_1__ job; } ;
struct TYPE_11__ {TYPE_2__ jobid; } ;
struct TYPE_13__ {unsigned char* mflags; int totlen; TYPE_3__ data; } ;
typedef TYPE_5__ clusterMsg ;


 int JOB_ID_LEN ;
 int clusterBuildMessageHdr (TYPE_5__*,int) ;
 int clusterSendMessage (scalar_t__,unsigned char*,int ) ;
 int * dictGetIterator (int *) ;
 TYPE_4__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int htonl (int ) ;
 int memcpy (int ,char*,int ) ;
 TYPE_4__* myself ;
 int ntohl (int ) ;

void clusterBroadcastJobIDMessage(dict *nodes, char *id, int type, uint32_t aux, unsigned char flags) {
    dictIterator *di = dictGetIterator(nodes);
    dictEntry *de;
    unsigned char buf[sizeof(clusterMsg)];
    clusterMsg *hdr = (clusterMsg*) buf;


    clusterBuildMessageHdr(hdr,type);
    memcpy(hdr->data.jobid.job.id,id,JOB_ID_LEN);
    hdr->data.jobid.job.aux = htonl(aux);
    hdr->mflags[0] = flags;

    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        if (node == myself) continue;
        if (node->link)
            clusterSendMessage(node->link,buf,ntohl(hdr->totlen));
    }
    dictReleaseIterator(di);
}
