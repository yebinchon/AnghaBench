
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nodename; } ;
struct TYPE_9__ {TYPE_1__ about; } ;
struct TYPE_10__ {TYPE_2__ fail; } ;
struct TYPE_12__ {int totlen; TYPE_3__ data; } ;
typedef TYPE_5__ clusterMsg ;
struct TYPE_13__ {TYPE_4__* cluster; } ;
struct TYPE_11__ {int nodes; } ;


 int CLUSTERMSG_TYPE_FAIL ;
 int CLUSTER_NAMELEN ;
 int clusterBroadcastMessage (int ,unsigned char*,int ) ;
 int clusterBuildMessageHdr (TYPE_5__*,int ) ;
 int memcpy (int ,char*,int ) ;
 int ntohl (int ) ;
 TYPE_6__ server ;

void clusterSendFail(char *nodename) {
    unsigned char buf[sizeof(clusterMsg)];
    clusterMsg *hdr = (clusterMsg*) buf;

    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_FAIL);
    memcpy(hdr->data.fail.about.nodename,nodename,CLUSTER_NAMELEN);
    clusterBroadcastMessage(server.cluster->nodes,buf,ntohl(hdr->totlen));
}
