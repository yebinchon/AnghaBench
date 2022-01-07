
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int * tail; int * head; } ;
typedef TYPE_1__ list_t ;
typedef int list_node_t ;


 int assert (int ) ;
 int * list_free_node (TYPE_1__*,int *) ;

void list_clear(list_t *list)
{
    assert(list != ((void*)0));
    for (list_node_t *node = list->head; node; ) {
        node = list_free_node(list, node);
    }
    list->head = ((void*)0);
    list->tail = ((void*)0);
    list->length = 0;
}
