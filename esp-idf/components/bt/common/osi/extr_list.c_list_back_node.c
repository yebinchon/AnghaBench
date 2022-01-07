
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tail; } ;
typedef TYPE_1__ list_t ;
typedef int list_node_t ;


 int assert (int) ;
 int list_is_empty (TYPE_1__ const*) ;

list_node_t *list_back_node(const list_t *list) {
  assert(list != ((void*)0));
  assert(!list_is_empty(list));

  return list->tail;
}
