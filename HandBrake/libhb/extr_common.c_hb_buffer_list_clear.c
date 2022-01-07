
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_buffer_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ count; int * tail; int * head; } ;
typedef TYPE_1__ hb_buffer_list_t ;



hb_buffer_t* hb_buffer_list_clear(hb_buffer_list_t *list)
{
    if (list == ((void*)0))
    {
        return ((void*)0);
    }
    hb_buffer_t *head = list->head;
    list->head = list->tail = ((void*)0);
    list->count = 0;
    list->size = 0;
    return head;
}
