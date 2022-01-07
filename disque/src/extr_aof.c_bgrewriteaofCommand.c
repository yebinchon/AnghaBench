
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int client ;
struct TYPE_4__ {int aof_child_pid; } ;
struct TYPE_3__ {int err; } ;


 scalar_t__ C_OK ;
 int addReply (int *,int ) ;
 int addReplyError (int *,char*) ;
 int addReplyStatus (int *,char*) ;
 scalar_t__ rewriteAppendOnlyFileBackground () ;
 TYPE_2__ server ;
 TYPE_1__ shared ;

void bgrewriteaofCommand(client *c) {
    if (server.aof_child_pid != -1) {
        addReplyError(c,"Background append only file rewriting already in progress");
    } else if (rewriteAppendOnlyFileBackground() == C_OK) {
        addReplyStatus(c,"Background append only file rewriting started");
    } else {
        addReply(c,shared.err);
    }
}
