
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ clusterLink ;


 int NET_IP_STR_LEN ;
 int anetPeerToString (int ,char*,int ,int *) ;

void nodeIp2String(char *buf, clusterLink *link) {
    anetPeerToString(link->fd, buf, NET_IP_STR_LEN, ((void*)0));
}
