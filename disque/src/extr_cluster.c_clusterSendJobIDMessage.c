
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int * link; } ;
typedef TYPE_4__ clusterNode ;
struct TYPE_10__ {int aux; int id; } ;
struct TYPE_8__ {TYPE_3__ job; } ;
struct TYPE_9__ {TYPE_1__ jobid; } ;
struct TYPE_12__ {int totlen; TYPE_2__ data; } ;
typedef TYPE_5__ clusterMsg ;


 int JOB_ID_LEN ;
 int clusterBuildMessageHdr (TYPE_5__*,int) ;
 int clusterSendMessage (int *,unsigned char*,int ) ;
 int htonl (int) ;
 int memcpy (int ,char*,int ) ;
 int ntohl (int ) ;

void clusterSendJobIDMessage(int type, clusterNode *node, char *id, int aux) {
    unsigned char buf[sizeof(clusterMsg)];
    clusterMsg *hdr = (clusterMsg*) buf;

    if (node->link == ((void*)0)) return;
    clusterBuildMessageHdr(hdr,type);
    memcpy(hdr->data.jobid.job.id,id,JOB_ID_LEN);
    hdr->data.jobid.job.aux = htonl(aux);
    clusterSendMessage(node->link,buf,ntohl(hdr->totlen));
}
