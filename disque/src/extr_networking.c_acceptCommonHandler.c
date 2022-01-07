
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int fd; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ maxclients; int stat_numconnections; int stat_rejected_conn; int clients; } ;


 int LL_WARNING ;
 int close (int) ;
 TYPE_1__* createClient (int) ;
 int errno ;
 int freeClient (TYPE_1__*) ;
 scalar_t__ listLength (int ) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,int ,int) ;
 int strerror (int ) ;
 int strlen (char*) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void acceptCommonHandler(int fd, int flags) {
    client *c;
    if ((c = createClient(fd)) == ((void*)0)) {
        serverLog(LL_WARNING,
            "Error registering fd event for the new client: %s (fd=%d)",
            strerror(errno),fd);
        close(fd);
        return;
    }




    if (listLength(server.clients) > server.maxclients) {
        char *err = "-ERR max number of clients reached\r\n";


        if (write(c->fd,err,strlen(err)) == -1) {

        }
        server.stat_rejected_conn++;
        freeClient(c);
        return;
    }
    server.stat_numconnections++;
    c->flags |= flags;
}
