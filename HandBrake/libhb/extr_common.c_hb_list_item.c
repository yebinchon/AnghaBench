
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items_count; void** items; } ;
typedef TYPE_1__ hb_list_t ;



void * hb_list_item( const hb_list_t * l, int i )
{
    if( l == ((void*)0) || i < 0 || i >= l->items_count )
    {
        return ((void*)0);
    }

    return l->items[i];
}
