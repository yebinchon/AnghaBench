
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; struct TYPE_6__* next; } ;
typedef TYPE_1__ hb_buffer_t ;
struct TYPE_7__ {int count; int size; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ hb_buffer_list_t ;



hb_buffer_t* hb_buffer_list_set(hb_buffer_list_t *list, hb_buffer_t *buf)
{
    int count = 0;
    int size = 0;

    if (list == ((void*)0))
    {
        return ((void*)0);
    }

    hb_buffer_t *head = list->head;
    hb_buffer_t *end = buf;
    if (end != ((void*)0))
    {
        count++;
        size += end->size;
        while (end->next != ((void*)0))
        {
            end = end->next;
            count++;
            size += end->size;
        }
    }
    list->head = buf;
    list->tail = end;
    list->count = count;
    list->size = size;
    return head;
}
