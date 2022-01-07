
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_4__ {int abort_request; int interrupt_callback; } ;
typedef TYPE_2__ Context ;


 scalar_t__ ff_check_interrupt (int *) ;

__attribute__((used)) static int async_check_interrupt(void *arg)
{
    URLContext *h = arg;
    Context *c = h->priv_data;

    if (c->abort_request)
        return 1;

    if (ff_check_interrupt(&c->interrupt_callback))
        c->abort_request = 1;

    return c->abort_request;
}
