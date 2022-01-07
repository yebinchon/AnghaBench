
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ clusterLink ;
typedef int cip ;
typedef void aeEventLoop ;
struct TYPE_6__ {int el; int neterr; } ;


 int AE_READABLE ;
 int ANET_ERR ;
 scalar_t__ EWOULDBLOCK ;
 int LL_VERBOSE ;
 int MAX_CLUSTER_ACCEPTS_PER_CALL ;
 int NET_IP_STR_LEN ;
 int UNUSED (void*) ;
 int aeCreateFileEvent (int ,int,int ,int ,TYPE_1__*) ;
 int anetEnableTcpNoDelay (int *,int) ;
 int anetNonBlock (int *,int) ;
 int anetTcpAccept (int ,int,char*,int,int*) ;
 int clusterReadHandler ;
 TYPE_1__* createClusterLink (int *) ;
 scalar_t__ errno ;
 TYPE_2__ server ;
 int serverLog (int ,char*,char*,...) ;

void clusterAcceptHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cport, cfd;
    int max = MAX_CLUSTER_ACCEPTS_PER_CALL;
    char cip[NET_IP_STR_LEN];
    clusterLink *link;
    UNUSED(el);
    UNUSED(mask);
    UNUSED(privdata);

    while(max--) {
        cfd = anetTcpAccept(server.neterr, fd, cip, sizeof(cip), &cport);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                serverLog(LL_VERBOSE,
                    "Accepting cluster node: %s", server.neterr);
            return;
        }
        anetNonBlock(((void*)0),cfd);
        anetEnableTcpNoDelay(((void*)0),cfd);


        serverLog(LL_VERBOSE,"Accepted cluster node %s:%d", cip, cport);





        link = createClusterLink(((void*)0));
        link->fd = cfd;
        aeCreateFileEvent(server.el,cfd,AE_READABLE,clusterReadHandler,link);
    }
}
