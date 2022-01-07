
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ cap; int (* oninsert ) (TYPE_1__*,void*,scalar_t__) ;void** items; } ;
typedef TYPE_1__ Ms ;


 int grow (TYPE_1__*) ;
 int stub1 (TYPE_1__*,void*,scalar_t__) ;

int
ms_append(Ms *a, void *item)
{
    if (a->len >= a->cap && !grow(a))
        return 0;

    a->items[a->len++] = item;
    if (a->oninsert)
        a->oninsert(a, item, a->len - 1);
    return 1;
}
