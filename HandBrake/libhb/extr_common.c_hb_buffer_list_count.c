
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ hb_buffer_list_t ;



int hb_buffer_list_count(hb_buffer_list_t *list)
{
    if (list == ((void*)0)) return 0;
    return list->count;
}
