
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int mstime_t ;
struct TYPE_10__ {int timeout; } ;
struct TYPE_11__ {int flags; scalar_t__ lastinteraction; TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_13__ {scalar_t__ maxidletime; } ;
struct TYPE_12__ {int leavingerr; } ;


 int CLIENT_BLOCKED ;
 int LL_VERBOSE ;
 int addReply (TYPE_2__*,int ) ;
 int freeClient (TYPE_2__*) ;
 scalar_t__ myselfLeaving () ;
 int replyToBlockedClientTimedOut (TYPE_2__*) ;
 TYPE_5__ server ;
 int serverLog (int ,char*) ;
 TYPE_4__ shared ;
 int unblockClient (TYPE_2__*) ;

int clientsCronHandleTimeout(client *c, mstime_t now_ms) {
    time_t now = now_ms/1000;

    if (server.maxidletime &&
        !(c->flags & CLIENT_BLOCKED) &&
        (now - c->lastinteraction > server.maxidletime))
    {
        serverLog(LL_VERBOSE,"Closing idle client");
        freeClient(c);
        return 1;
    } else if (c->flags & CLIENT_BLOCKED) {




        if (c->bpop.timeout != 0 && c->bpop.timeout < now_ms) {
            replyToBlockedClientTimedOut(c);
            unblockClient(c);
        } else if (myselfLeaving()) {
            addReply(c,shared.leavingerr);
            unblockClient(c);
        }
    }
    return 0;
}
