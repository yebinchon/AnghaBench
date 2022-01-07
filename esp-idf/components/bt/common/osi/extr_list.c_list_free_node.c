
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; int (* free_cb ) (int ) ;} ;
typedef TYPE_1__ list_t ;
struct TYPE_8__ {int data; struct TYPE_8__* next; } ;
typedef TYPE_2__ list_node_t ;


 int assert (int ) ;
 int osi_free (TYPE_2__*) ;
 int stub1 (int ) ;

list_node_t *list_free_node(list_t *list, list_node_t *node)
{
    assert(list != ((void*)0));
    assert(node != ((void*)0));

    list_node_t *next = node->next;

    if (list->free_cb) {
        list->free_cb(node->data);
    }
    osi_free(node);
    --list->length;

    return next;
}
