
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ btype; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int nullmultibulk; } ;


 scalar_t__ BLOCKED_GETJOB ;
 scalar_t__ BLOCKED_JOB_REPL ;
 int addReply (TYPE_1__*,int ) ;
 int addReplySds (TYPE_1__*,int ) ;
 int sdsnew (char*) ;
 int serverPanic (char*) ;
 TYPE_2__ shared ;

void replyToBlockedClientTimedOut(client *c) {
    if (c->btype == BLOCKED_JOB_REPL) {
        addReplySds(c,
            sdsnew("-NOREPL Timeout reached before replicating to "
                   "the requested number of nodes\r\n"));
        return;
    } else if (c->btype == BLOCKED_GETJOB) {
        addReply(c,shared.nullmultibulk);
    } else {
        serverPanic("Unknown btype in replyToBlockedClientTimedOut().");
    }
}
