
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* querybuf; int flags; scalar_t__ reqtype; scalar_t__ argc; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {TYPE_1__* current_client; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_CLOSE_AFTER_REPLY ;
 scalar_t__ C_OK ;
 scalar_t__ PROTO_REQ_INLINE ;
 scalar_t__ PROTO_REQ_MULTIBULK ;
 scalar_t__ clientsArePaused () ;
 scalar_t__ processCommand (TYPE_1__*) ;
 scalar_t__ processInlineBuffer (TYPE_1__*) ;
 scalar_t__ processMultibulkBuffer (TYPE_1__*) ;
 int resetClient (TYPE_1__*) ;
 scalar_t__ sdslen (char*) ;
 TYPE_2__ server ;
 int serverPanic (char*) ;

void processInputBuffer(client *c) {
    server.current_client = c;

    while(sdslen(c->querybuf)) {

        if (clientsArePaused()) break;


        if (c->flags & CLIENT_BLOCKED) break;




        if (c->flags & CLIENT_CLOSE_AFTER_REPLY) break;


        if (!c->reqtype) {
            if (c->querybuf[0] == '*') {
                c->reqtype = PROTO_REQ_MULTIBULK;
            } else {
                c->reqtype = PROTO_REQ_INLINE;
            }
        }

        if (c->reqtype == PROTO_REQ_INLINE) {
            if (processInlineBuffer(c) != C_OK) break;
        } else if (c->reqtype == PROTO_REQ_MULTIBULK) {
            if (processMultibulkBuffer(c) != C_OK) break;
        } else {
            serverPanic("Unknown request type");
        }


        if (c->argc == 0) {
            resetClient(c);
        } else {

            if (processCommand(c) == C_OK)
                resetClient(c);
        }
    }
    server.current_client = ((void*)0);
}
