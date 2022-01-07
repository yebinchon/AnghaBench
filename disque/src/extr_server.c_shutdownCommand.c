
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {scalar_t__ loading; } ;
struct TYPE_10__ {int syntaxerr; } ;
struct TYPE_8__ {int ptr; } ;


 scalar_t__ C_OK ;
 int SHUTDOWN_REWRITE_AOF ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int exit (int ) ;
 scalar_t__ prepareForShutdown (int) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int strcasecmp (int ,char*) ;

void shutdownCommand(client *c) {
    int flags = 0;

    if (c->argc > 2) {
        addReply(c,shared.syntaxerr);
        return;
    } else if (c->argc == 2) {
        if (!strcasecmp(c->argv[1]->ptr,"rewrite-aof")) {
            flags |= SHUTDOWN_REWRITE_AOF;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }




    if (server.loading)
        flags = (flags & ~SHUTDOWN_REWRITE_AOF);
    if (prepareForShutdown(flags) == C_OK) exit(0);
    addReplyError(c,"Errors trying to SHUTDOWN. Check logs.");
}
