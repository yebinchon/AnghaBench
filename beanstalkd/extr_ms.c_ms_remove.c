
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; void** items; } ;
typedef TYPE_1__ Ms ;


 int ms_delete (TYPE_1__*,size_t) ;

int
ms_remove(Ms *a, void *item)
{
    size_t i;

    for (i = 0; i < a->len; i++) {
        if (a->items[i] == item)
            return ms_delete(a, i);
    }
    return 0;
}
