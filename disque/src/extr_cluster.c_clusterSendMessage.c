
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sndbuf; int fd; } ;
typedef TYPE_2__ clusterLink ;
struct TYPE_8__ {TYPE_1__* cluster; int el; } ;
struct TYPE_6__ {int stats_bus_messages_sent; } ;


 int AE_WRITABLE ;
 int aeCreateFileEvent (int ,int ,int ,int ,TYPE_2__*) ;
 int clusterWriteHandler ;
 int sdscatlen (int ,unsigned char*,size_t) ;
 scalar_t__ sdslen (int ) ;
 TYPE_3__ server ;

void clusterSendMessage(clusterLink *link, unsigned char *msg, size_t msglen) {
    if (sdslen(link->sndbuf) == 0 && msglen != 0)
        aeCreateFileEvent(server.el,link->fd,AE_WRITABLE,
                    clusterWriteHandler,link);

    link->sndbuf = sdscatlen(link->sndbuf, msg, msglen);
    server.cluster->stats_bus_messages_sent++;
}
