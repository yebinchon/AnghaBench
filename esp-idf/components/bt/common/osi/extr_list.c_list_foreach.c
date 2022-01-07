
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; } ;
typedef TYPE_1__ list_t ;
struct TYPE_6__ {int data; struct TYPE_6__* next; } ;
typedef TYPE_2__ list_node_t ;
typedef int (* list_iter_cb ) (int ,void*) ;


 int assert (int ) ;

list_node_t *list_foreach(const list_t *list, list_iter_cb callback, void *context)
{
  assert(list != ((void*)0));
  assert(callback != ((void*)0));

  for (list_node_t *node = list->head; node; ) {
    list_node_t *next = node->next;
    if (!callback(node->data, context)) {
      return node;
    }
    node = next;
  }
  return ((void*)0);
}
