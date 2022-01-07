
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {int monitors; } ;
struct TYPE_8__ {int ok; } ;


 int CLIENT_MONITOR ;
 int addReply (TYPE_1__*,int ) ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 TYPE_3__ server ;
 TYPE_2__ shared ;

void monitorCommand(client *c) {

    if (c->flags & CLIENT_MONITOR) return;

    c->flags |= CLIENT_MONITOR;
    listAddNodeTail(server.monitors,c);
    addReply(c,shared.ok);
}
