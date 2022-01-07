
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; TYPE_1__* node; int rcvbuf; int sndbuf; } ;
typedef TYPE_2__ clusterLink ;
struct TYPE_8__ {int el; } ;
struct TYPE_6__ {int * link; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int aeDeleteFileEvent (int ,int,int ) ;
 int close (int) ;
 int sdsfree (int ) ;
 TYPE_4__ server ;
 int zfree (TYPE_2__*) ;

void freeClusterLink(clusterLink *link) {
    if (link->fd != -1) {
        aeDeleteFileEvent(server.el, link->fd, AE_WRITABLE);
        aeDeleteFileEvent(server.el, link->fd, AE_READABLE);
    }
    sdsfree(link->sndbuf);
    sdsfree(link->rcvbuf);
    if (link->node)
        link->node->link = ((void*)0);
    close(link->fd);
    zfree(link);
}
