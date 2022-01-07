
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;
typedef int list_node_t ;


 int assert (int ) ;
 int * list_begin (int const*) ;
 int const* list_end (int const*) ;
 int * list_next (int const*) ;
 void const* list_node (int const*) ;

bool list_contains(const list_t *list, const void *data)
{
  assert(list != ((void*)0));
  assert(data != ((void*)0));

  for (const list_node_t *node = list_begin(list); node != list_end(list); node = list_next(node)) {
    if (list_node(node) == data) {
      return 1;
    }
  }

  return 0;
}
