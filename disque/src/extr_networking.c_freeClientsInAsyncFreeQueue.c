
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int listNode ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int clients_to_close; } ;


 int CLIENT_CLOSE_ASAP ;
 int freeClient (TYPE_1__*) ;
 int listDelNode (int ,int *) ;
 int * listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 TYPE_1__* listNodeValue (int *) ;
 TYPE_2__ server ;

void freeClientsInAsyncFreeQueue(void) {
    while (listLength(server.clients_to_close)) {
        listNode *ln = listFirst(server.clients_to_close);
        client *c = listNodeValue(ln);

        c->flags &= ~CLIENT_CLOSE_ASAP;
        freeClient(c);
        listDelNode(server.clients_to_close,ln);
    }
}
