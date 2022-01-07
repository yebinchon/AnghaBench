
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tail; } ;
typedef TYPE_2__ list_t ;
struct TYPE_5__ {void* data; } ;


 int assert (int) ;
 int list_is_empty (TYPE_2__ const*) ;

void *list_back(const list_t *list) {
  assert(list != ((void*)0));
  assert(!list_is_empty(list));

  return list->tail->data;
}
