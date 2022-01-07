
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; struct TYPE_5__* next; } ;
typedef TYPE_1__ hb_buffer_t ;
struct TYPE_6__ {int count; int size; TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_2__ hb_buffer_list_t ;



void hb_buffer_list_prepend(hb_buffer_list_t *list, hb_buffer_t *buf)
{
    int count = 1;
    int size = 0;
    hb_buffer_t *end = buf;

    if (buf == ((void*)0))
    {
        return;
    }


    size += buf->size;
    while (end != ((void*)0) && end->next != ((void*)0))
    {
        end = end->next;
        size += end->size;
        count++;
    }
    if (list->tail == ((void*)0))
    {
        list->head = buf;
        list->tail = end;
    }
    else
    {
        end->next = list->head;
        list->head = buf;
    }
    list->count += count;
    list->size += size;
}
