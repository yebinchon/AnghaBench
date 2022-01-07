
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reply; scalar_t__ bufpos; } ;
typedef TYPE_1__ client ;


 scalar_t__ listLength (int ) ;

int clientHasPendingReplies(client *c) {
    return c->bufpos || listLength(c->reply);
}
