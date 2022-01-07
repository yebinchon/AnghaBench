
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ fd; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int clients_pending_write; } ;


 int CLIENT_AOF_CLIENT ;
 int CLIENT_PENDING_WRITE ;
 int CLIENT_REPLY_OFF ;
 int CLIENT_REPLY_SKIP ;
 int C_ERR ;
 int C_OK ;
 int clientHasPendingReplies (TYPE_1__*) ;
 int listAddNodeHead (int ,TYPE_1__*) ;
 TYPE_2__ server ;

int prepareClientToWrite(client *c) {

    if (c->flags & (CLIENT_REPLY_OFF|CLIENT_REPLY_SKIP)) return C_ERR;
    if (c->flags & CLIENT_AOF_CLIENT) return C_ERR;
    if (c->fd <= 0) return C_ERR;





    if (!clientHasPendingReplies(c) &&
        !(c->flags & CLIENT_PENDING_WRITE))
    {






        c->flags |= CLIENT_PENDING_WRITE;
        listAddNodeHead(server.clients_pending_write,c);
    }


    return C_OK;
}
