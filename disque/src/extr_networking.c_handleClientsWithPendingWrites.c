
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_8__ {int fd; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {int el; int clients_pending_write; } ;


 scalar_t__ AE_ERR ;
 int AE_WRITABLE ;
 int CLIENT_PENDING_WRITE ;
 scalar_t__ C_ERR ;
 scalar_t__ aeCreateFileEvent (int ,int ,int ,int ,TYPE_1__*) ;
 scalar_t__ clientHasPendingReplies (TYPE_1__*) ;
 int freeClientAsync (TYPE_1__*) ;
 int listDelNode (int ,int *) ;
 int listLength (int ) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sendReplyToClient ;
 TYPE_3__ server ;
 scalar_t__ writeToClient (int ,TYPE_1__*,int ) ;

int handleClientsWithPendingWrites(void) {
    listIter li;
    listNode *ln;
    int processed = listLength(server.clients_pending_write);

    listRewind(server.clients_pending_write,&li);
    while((ln = listNext(&li))) {
        client *c = listNodeValue(ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
        listDelNode(server.clients_pending_write,ln);


        if (writeToClient(c->fd,c,0) == C_ERR) continue;



        if (clientHasPendingReplies(c) &&
            aeCreateFileEvent(server.el, c->fd, AE_WRITABLE,
                sendReplyToClient, c) == AE_ERR)
        {
            freeClientAsync(c);
        }
    }
    return processed;
}
