
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* ms_event_fn ;
struct TYPE_3__ {void* onremove; void* oninsert; int * items; scalar_t__ last; scalar_t__ cap; scalar_t__ len; } ;
typedef TYPE_1__ Ms ;



void
ms_init(Ms *a, ms_event_fn oninsert, ms_event_fn onremove)
{
    a->len = a->cap = a->last = 0;
    a->items = ((void*)0);
    a->oninsert = oninsert;
    a->onremove = onremove;
}
