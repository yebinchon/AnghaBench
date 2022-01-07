
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_buffer_t ;
struct TYPE_3__ {int * tail; } ;
typedef TYPE_1__ hb_buffer_list_t ;



hb_buffer_t* hb_buffer_list_tail(hb_buffer_list_t *list)
{
    if (list == ((void*)0))
    {
        return ((void*)0);
    }
    return list->tail;
}
