
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; int (* onremove ) (TYPE_1__*,void*,size_t) ;void** items; } ;
typedef TYPE_1__ Ms ;


 int stub1 (TYPE_1__*,void*,size_t) ;

__attribute__((used)) static int
ms_delete(Ms *a, size_t i)
{
    void *item;

    if (i >= a->len)
        return 0;
    item = a->items[i];
    a->items[i] = a->items[--a->len];


    if (a->onremove)
        a->onremove(a, item, i);
    return 1;
}
