
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int clients_to_close; } ;


 int CLIENT_CLOSE_ASAP ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 TYPE_2__ server ;

void freeClientAsync(client *c) {
    if (c->flags & CLIENT_CLOSE_ASAP) return;
    c->flags |= CLIENT_CLOSE_ASAP;
    listAddNodeTail(server.clients_to_close,c);
}
