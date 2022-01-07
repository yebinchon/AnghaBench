
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ size; } ;
typedef TYPE_1__ hb_buffer_t ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ count; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ hb_buffer_list_t ;



hb_buffer_t* hb_buffer_list_rem_tail(hb_buffer_list_t *list)
{
    if (list == ((void*)0))
    {
        return ((void*)0);
    }
    hb_buffer_t *tail = list->tail;

    if (list->head == list->tail)
    {
        list->head = list->tail = ((void*)0);
        list->count = 0;
        list->size = 0;
    }
    else if (list->tail != ((void*)0))
    {
        hb_buffer_t *end = list->head;
        while (end->next != list->tail)
        {
            end = end->next;
        }
        end->next = ((void*)0);
        list->tail = end;
        list->count--;
        list->size -= tail->size;
    }
    if (tail != ((void*)0))
    {
        tail->next = ((void*)0);
    }
    return tail;
}
