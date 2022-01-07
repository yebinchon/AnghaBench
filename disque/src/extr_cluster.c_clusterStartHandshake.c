
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct TYPE_4__ {int port; int ip; } ;
typedef TYPE_1__ clusterNode ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_MEET ;
 int CLUSTER_PORT_INCR ;
 int EAGAIN ;
 int EINVAL ;
 int NET_IP_STR_LEN ;
 int clusterAddNode (TYPE_1__*) ;
 scalar_t__ clusterHandshakeInProgress (char*,int) ;
 TYPE_1__* createClusterNode (int *,int) ;
 int errno ;
 int inet_ntop (scalar_t__,void*,char*,int) ;
 scalar_t__ inet_pton (scalar_t__,char*,int *) ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;

int clusterStartHandshake(char *ip, int port) {
    clusterNode *n;
    char norm_ip[NET_IP_STR_LEN];
    struct sockaddr_storage sa;


    if (inet_pton(AF_INET,ip,
            &(((struct sockaddr_in *)&sa)->sin_addr)))
    {
        sa.ss_family = AF_INET;
    } else if (inet_pton(AF_INET6,ip,
            &(((struct sockaddr_in6 *)&sa)->sin6_addr)))
    {
        sa.ss_family = AF_INET6;
    } else {
        errno = EINVAL;
        return 0;
    }


    if (port <= 0 || port > (65535-CLUSTER_PORT_INCR)) {
        errno = EINVAL;
        return 0;
    }



    memset(norm_ip,0,NET_IP_STR_LEN);
    if (sa.ss_family == AF_INET)
        inet_ntop(AF_INET,
            (void*)&(((struct sockaddr_in *)&sa)->sin_addr),
            norm_ip,NET_IP_STR_LEN);
    else
        inet_ntop(AF_INET6,
            (void*)&(((struct sockaddr_in6 *)&sa)->sin6_addr),
            norm_ip,NET_IP_STR_LEN);

    if (clusterHandshakeInProgress(norm_ip,port)) {
        errno = EAGAIN;
        return 0;
    }




    n = createClusterNode(((void*)0),CLUSTER_NODE_HANDSHAKE|CLUSTER_NODE_MEET);
    memcpy(n->ip,norm_ip,sizeof(n->ip));
    n->port = port;
    clusterAddNode(n);
    return 1;
}
