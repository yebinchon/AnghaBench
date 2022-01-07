
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* cmd; int authenticated; int argc; TYPE_1__** argv; TYPE_6__* lastcmd; int flags; } ;
typedef TYPE_2__ client ;
struct TYPE_15__ {char* name; scalar_t__ proc; int flags; int arity; } ;
struct TYPE_14__ {int aof_last_write_status; scalar_t__ loading; int aof_last_write_errno; scalar_t__ maxmemory; scalar_t__ requirepass; } ;
struct TYPE_13__ {int loadingerr; int oomerr; int noautherr; int ok; } ;
struct TYPE_11__ {scalar_t__ ptr; } ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 int CMD_CALL_FULL ;
 int CMD_DENYOOM ;
 int CMD_LOADING ;
 int CMD_WRITE ;
 int C_ERR ;
 int C_OK ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*) ;
 int addReplySds (TYPE_2__*,int ) ;
 scalar_t__ authCommand ;
 int call (TYPE_2__*,int ) ;
 int freeMemoryIfNeeded () ;
 int handleClientsBlockedOnQueues () ;
 TYPE_6__* lookupCommand (scalar_t__) ;
 scalar_t__ pingCommand ;
 int sdscatprintf (int ,char*,int ) ;
 int sdsempty () ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int strcasecmp (scalar_t__,char*) ;
 int strerror (int ) ;

int processCommand(client *c) {




    if (!strcasecmp(c->argv[0]->ptr,"quit")) {
        addReply(c,shared.ok);
        c->flags |= CLIENT_CLOSE_AFTER_REPLY;
        return C_ERR;
    }



    c->cmd = c->lastcmd = lookupCommand(c->argv[0]->ptr);
    if (!c->cmd) {
        addReplyErrorFormat(c,"unknown command '%s'",
            (char*)c->argv[0]->ptr);
        return C_OK;
    } else if ((c->cmd->arity > 0 && c->cmd->arity != c->argc) ||
               (c->argc < -c->cmd->arity)) {
        addReplyErrorFormat(c,"wrong number of arguments for '%s' command",
            c->cmd->name);
        return C_OK;
    }


    if (server.requirepass && !c->authenticated && c->cmd->proc != authCommand)
    {
        addReply(c,shared.noautherr);
        return C_OK;
    }






    if (server.maxmemory) {
        int retval = freeMemoryIfNeeded();
        if ((c->cmd->flags & CMD_DENYOOM) && retval == C_ERR) {
            addReply(c, shared.oomerr);
            return C_OK;
        }
    }


    if (server.aof_last_write_status == C_ERR &&
         (c->cmd->flags & CMD_WRITE ||
          c->cmd->proc == pingCommand))
    {
        addReplySds(c,
            sdscatprintf(sdsempty(),
            "-MISCONF Errors writing to the AOF file: %s\r\n",
            strerror(server.aof_last_write_errno)));
        return C_OK;
    }



    if (server.loading && !(c->cmd->flags & CMD_LOADING)) {
        addReply(c, shared.loadingerr);
        return C_OK;
    }

    call(c,CMD_CALL_FULL);
    handleClientsBlockedOnQueues();
    return C_OK;
}
