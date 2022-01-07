
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ size; } ;
typedef TYPE_1__ hb_buffer_t ;
struct TYPE_9__ {TYPE_1__* tail; int size; int count; TYPE_1__* head; } ;
typedef TYPE_2__ hb_buffer_list_t ;


 TYPE_1__* hb_buffer_list_rem_head (TYPE_2__*) ;

hb_buffer_t* hb_buffer_list_rem(hb_buffer_list_t *list, hb_buffer_t * b)
{
    hb_buffer_t * a;

    if (list == ((void*)0))
    {
        return ((void*)0);
    }
    if (b == list->head)
    {
        return hb_buffer_list_rem_head(list);
    }
    a = list->head;
    while (a != ((void*)0) && a->next != b)
    {
        a = a->next;
    }
    if (a == ((void*)0))
    {

        return ((void*)0);
    }
    list->count--;
    list->size -= b->size;
    a->next = b->next;
    if (list->tail == b)
    {
        list->tail = a;
    }
    b->next = ((void*)0);

    return b;
}
