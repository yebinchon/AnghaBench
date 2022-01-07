
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serverCommand {int keystep; int lastkey; int firstkey; int arity; int name; } ;
typedef int client ;
struct TYPE_2__ {int nullbulk; } ;


 int CMD_ADMIN ;
 int CMD_DENYOOM ;
 int CMD_FAST ;
 int CMD_LOADING ;
 int CMD_RANDOM ;
 int CMD_READONLY ;
 int CMD_SKIP_MONITOR ;
 int CMD_WRITE ;
 void* addDeferredMultiBulkLength (int *) ;
 int addReply (int *,int ) ;
 int addReplyBulkCString (int *,int ) ;
 scalar_t__ addReplyCommandFlag (int *,struct serverCommand*,int ,char*) ;
 int addReplyLongLong (int *,int ) ;
 int addReplyMultiBulkLen (int *,int) ;
 int setDeferredMultiBulkLength (int *,void*,int) ;
 TYPE_1__ shared ;

void addReplyCommand(client *c, struct serverCommand *cmd) {
    if (!cmd) {
        addReply(c, shared.nullbulk);
    } else {

        addReplyMultiBulkLen(c, 6);
        addReplyBulkCString(c, cmd->name);
        addReplyLongLong(c, cmd->arity);

        int flagcount = 0;
        void *flaglen = addDeferredMultiBulkLength(c);
        flagcount += addReplyCommandFlag(c,cmd,CMD_WRITE, "write");
        flagcount += addReplyCommandFlag(c,cmd,CMD_READONLY, "readonly");
        flagcount += addReplyCommandFlag(c,cmd,CMD_DENYOOM, "denyoom");
        flagcount += addReplyCommandFlag(c,cmd,CMD_ADMIN, "admin");
        flagcount += addReplyCommandFlag(c,cmd,CMD_RANDOM, "random");
        flagcount += addReplyCommandFlag(c,cmd,CMD_LOADING, "loading");
        flagcount += addReplyCommandFlag(c,cmd,CMD_SKIP_MONITOR, "skip_monitor");
        flagcount += addReplyCommandFlag(c,cmd,CMD_FAST, "fast");
        setDeferredMultiBulkLength(c, flaglen, flagcount);

        addReplyLongLong(c, cmd->firstkey);
        addReplyLongLong(c, cmd->lastkey);
        addReplyLongLong(c, cmd->keystep);
    }
}
