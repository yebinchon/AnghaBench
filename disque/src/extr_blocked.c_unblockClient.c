
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ btype; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int unblocked_clients; int bpop_blocked_clients; } ;


 scalar_t__ BLOCKED_GETJOB ;
 scalar_t__ BLOCKED_JOB_REPL ;
 scalar_t__ BLOCKED_NONE ;
 int CLIENT_BLOCKED ;
 int CLIENT_UNBLOCKED ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 TYPE_5__ server ;
 int serverPanic (char*) ;
 int unblockClientBlockedForJobs (TYPE_1__*) ;
 int unblockClientWaitingJobRepl (TYPE_1__*) ;

void unblockClient(client *c) {
    if (c->btype == BLOCKED_JOB_REPL) {
        unblockClientWaitingJobRepl(c);
    } else if (c->btype == BLOCKED_GETJOB) {
        unblockClientBlockedForJobs(c);
    } else {
        serverPanic("Unknown btype in unblockClient().");
    }


    c->flags &= ~CLIENT_BLOCKED;
    c->btype = BLOCKED_NONE;
    server.bpop_blocked_clients--;


    if (!(c->flags & CLIENT_UNBLOCKED)) {
        c->flags |= CLIENT_UNBLOCKED;
        listAddNodeTail(server.unblocked_clients,c);
    }
}
