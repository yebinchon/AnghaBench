
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int listNode ;
struct TYPE_10__ {int queues; } ;
struct TYPE_11__ {int flags; int * peerid; struct TYPE_11__* argv; scalar_t__ name; int reply; TYPE_1__ bpop; int * querybuf; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {int clients_to_close; int monitors; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_CLOSE_ASAP ;
 int CLIENT_MONITOR ;
 int decrRefCount (scalar_t__) ;
 int dictRelease (int ) ;
 int freeClientArgv (TYPE_2__*) ;
 int listDelNode (int ,int *) ;
 int listRelease (int ) ;
 int * listSearchKey (int ,TYPE_2__*) ;
 int sdsfree (int *) ;
 TYPE_6__ server ;
 int serverAssert (int ) ;
 int unblockClient (TYPE_2__*) ;
 int unlinkClient (TYPE_2__*) ;
 int zfree (TYPE_2__*) ;

void freeClient(client *c) {
    listNode *ln;


    sdsfree(c->querybuf);
    c->querybuf = ((void*)0);


    if (c->flags & CLIENT_BLOCKED) unblockClient(c);
    dictRelease(c->bpop.queues);


    listRelease(c->reply);
    freeClientArgv(c);




    unlinkClient(c);


    if (c->flags & CLIENT_MONITOR) {
        ln = listSearchKey(server.monitors,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.monitors,ln);
    }



    if (c->flags & CLIENT_CLOSE_ASAP) {
        ln = listSearchKey(server.clients_to_close,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.clients_to_close,ln);
    }



    if (c->name) decrRefCount(c->name);
    zfree(c->argv);
    sdsfree(c->peerid);
    zfree(c);
}
