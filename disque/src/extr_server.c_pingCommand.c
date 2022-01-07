
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int argc; int * argv; TYPE_1__* cmd; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {int pong; } ;
struct TYPE_8__ {int name; } ;


 int addReply (TYPE_2__*,int ) ;
 int addReplyBulk (TYPE_2__*,int ) ;
 int addReplyErrorFormat (TYPE_2__*,char*,int ) ;
 TYPE_3__ shared ;

void pingCommand(client *c) {

    if (c->argc > 2) {
        addReplyErrorFormat(c,"wrong number of arguments for '%s' command",
            c->cmd->name);
        return;
    }

    if (c->argc == 1)
        addReply(c,shared.pong);
    else
        addReplyBulk(c,c->argv[1]);
}
