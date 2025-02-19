
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; void* value; } ;
typedef TYPE_1__ listNode ;
struct TYPE_7__ {scalar_t__ len; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ list ;


 TYPE_1__* zmalloc (int) ;

list *listAddNodeTail(list *list, void *value)
{
    listNode *node;

    if ((node = zmalloc(sizeof(*node))) == ((void*)0))
        return ((void*)0);
    node->value = value;
    if (list->len == 0) {
        list->head = list->tail = node;
        node->prev = node->next = ((void*)0);
    } else {
        node->prev = list->tail;
        node->next = ((void*)0);
        list->tail->next = node;
        list->tail = node;
    }
    list->len++;
    return list;
}
