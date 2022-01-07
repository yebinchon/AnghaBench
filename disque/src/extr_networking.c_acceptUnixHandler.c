
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void aeEventLoop ;
struct TYPE_2__ {int unixsocket; int neterr; } ;


 int ANET_ERR ;
 int CLIENT_UNIX_SOCKET ;
 scalar_t__ EWOULDBLOCK ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int MAX_ACCEPTS_PER_CALL ;
 int UNUSED (void*) ;
 int acceptCommonHandler (int,int ) ;
 int anetUnixAccept (int ,int) ;
 scalar_t__ errno ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;

void acceptUnixHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cfd, max = MAX_ACCEPTS_PER_CALL;
    UNUSED(el);
    UNUSED(mask);
    UNUSED(privdata);

    while(max--) {
        cfd = anetUnixAccept(server.neterr, fd);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                serverLog(LL_WARNING,
                    "Accepting client connection: %s", server.neterr);
            return;
        }
        serverLog(LL_VERBOSE,"Accepted connection to %s", server.unixsocket);
        acceptCommonHandler(cfd,CLIENT_UNIX_SOCKET);
    }
}
