
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int fd; int sndbuf; } ;
typedef TYPE_1__ clusterLink ;
typedef int aeEventLoop ;
struct TYPE_5__ {int el; } ;


 int AE_WRITABLE ;
 int LL_DEBUG ;
 int UNUSED (int) ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 int errno ;
 int handleLinkIOError (TYPE_1__*) ;
 scalar_t__ sdslen (int ) ;
 int sdsrange (int ,scalar_t__,int) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;
 scalar_t__ write (int,int ,scalar_t__) ;

void clusterWriteHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    clusterLink *link = (clusterLink*) privdata;
    ssize_t nwritten;
    UNUSED(el);
    UNUSED(mask);

    nwritten = write(fd, link->sndbuf, sdslen(link->sndbuf));
    if (nwritten <= 0) {
        serverLog(LL_DEBUG,"I/O error writing to node link: %s",
            strerror(errno));
        handleLinkIOError(link);
        return;
    }
    sdsrange(link->sndbuf,nwritten,-1);
    if (sdslen(link->sndbuf) == 0)
        aeDeleteFileEvent(server.el, link->fd, AE_WRITABLE);
}
