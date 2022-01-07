
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ size; } ;
typedef TYPE_1__ hb_buffer_t ;
struct TYPE_6__ {int size; int count; TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_2__ hb_buffer_list_t ;



hb_buffer_t* hb_buffer_list_rem_head(hb_buffer_list_t *list)
{
    if (list == ((void*)0))
    {
        return ((void*)0);
    }
    hb_buffer_t *head = list->head;
    if (list->head != ((void*)0))
    {
        if (list->head == list->tail)
        {
            list->tail = ((void*)0);
        }
        list->head = list->head->next;
        list->count--;
        list->size -= head->size;
    }
    if (head != ((void*)0))
    {
        head->next = ((void*)0);
    }
    return head;
}
