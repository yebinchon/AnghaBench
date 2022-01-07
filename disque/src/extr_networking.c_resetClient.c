
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bulklen; int flags; scalar_t__ multibulklen; scalar_t__ reqtype; } ;
typedef TYPE_1__ client ;


 int CLIENT_REPLY_SKIP ;
 int CLIENT_REPLY_SKIP_NEXT ;
 int freeClientArgv (TYPE_1__*) ;

void resetClient(client *c) {
    freeClientArgv(c);
    c->reqtype = 0;
    c->multibulklen = 0;
    c->bulklen = -1;




    c->flags &= ~CLIENT_REPLY_SKIP;
    if (c->flags & CLIENT_REPLY_SKIP_NEXT) {
        c->flags |= CLIENT_REPLY_SKIP;
        c->flags &= ~CLIENT_REPLY_SKIP_NEXT;
    }
}
