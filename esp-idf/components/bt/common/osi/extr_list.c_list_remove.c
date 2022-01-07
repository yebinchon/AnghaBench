
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tail; TYPE_2__* head; } ;
typedef TYPE_1__ list_t ;
struct TYPE_8__ {void* data; struct TYPE_8__* next; } ;
typedef TYPE_2__ list_node_t ;


 int assert (int ) ;
 void* list_free_node (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ list_is_empty (TYPE_1__*) ;

bool list_remove(list_t *list, void *data)
{
    assert(list != ((void*)0));
    assert(data != ((void*)0));

    if (list_is_empty(list)) {
        return 0;
    }

    if (list->head->data == data) {
        list_node_t *next = list_free_node(list, list->head);
        if (list->tail == list->head) {
            list->tail = next;
        }
        list->head = next;
        return 1;
    }

    for (list_node_t *prev = list->head, *node = list->head->next; node; prev = node, node = node->next)
        if (node->data == data) {
            prev->next = list_free_node(list, node);
            if (list->tail == node) {
                list->tail = prev;
            }
            return 1;
        }

    return 0;
}
