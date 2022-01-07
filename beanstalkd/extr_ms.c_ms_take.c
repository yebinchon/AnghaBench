
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int last; void** items; } ;
typedef TYPE_1__ Ms ;


 int ms_delete (TYPE_1__*,size_t) ;

void *
ms_take(Ms *a)
{
    void *item;

    if (!a->len)
        return ((void*)0);




    a->last = a->last % a->len;
    item = a->items[a->last];
    ms_delete(a, a->last);
    ++a->last;
    return item;
}
