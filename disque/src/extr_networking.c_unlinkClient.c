
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int listNode ;
struct TYPE_5__ {int fd; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int unblocked_clients; int clients_pending_write; int el; int clients; TYPE_1__* current_client; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int CLIENT_PENDING_WRITE ;
 int CLIENT_UNBLOCKED ;
 int aeDeleteFileEvent (int ,int,int ) ;
 int close (int) ;
 int listDelNode (int ,int *) ;
 int * listSearchKey (int ,TYPE_1__*) ;
 TYPE_3__ server ;
 int serverAssert (int ) ;

void unlinkClient(client *c) {
    listNode *ln;


    if (server.current_client == c) server.current_client = ((void*)0);




    if (c->fd != -1) {

        ln = listSearchKey(server.clients,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.clients,ln);


        aeDeleteFileEvent(server.el,c->fd,AE_READABLE);
        aeDeleteFileEvent(server.el,c->fd,AE_WRITABLE);
        close(c->fd);
        c->fd = -1;
    }


    if (c->flags & CLIENT_PENDING_WRITE) {
        ln = listSearchKey(server.clients_pending_write,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.clients_pending_write,ln);
    }



    if (c->flags & CLIENT_UNBLOCKED) {
        ln = listSearchKey(server.unblocked_clients,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.unblocked_clients,ln);
    }
}
