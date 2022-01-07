
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_llist_element {struct curl_llist_element* next; TYPE_1__* prev; int * ptr; } ;
struct curl_llist {scalar_t__ size; int (* dtor ) (void*,void*) ;TYPE_1__* tail; struct curl_llist_element* head; } ;
struct TYPE_2__ {struct curl_llist_element* next; } ;


 int stub1 (void*,void*) ;

void
Curl_llist_remove(struct curl_llist *list, struct curl_llist_element *e,
                  void *user)
{
  void *ptr;
  if(e == ((void*)0) || list->size == 0)
    return;

  if(e == list->head) {
    list->head = e->next;

    if(list->head == ((void*)0))
      list->tail = ((void*)0);
    else
      e->next->prev = ((void*)0);
  }
  else {
    if(!e->prev)
      list->head = e->next;
    else
      e->prev->next = e->next;

    if(!e->next)
      list->tail = e->prev;
    else
      e->next->prev = e->prev;
  }

  ptr = e->ptr;

  e->ptr = ((void*)0);
  e->prev = ((void*)0);
  e->next = ((void*)0);

  --list->size;


  if(list->dtor)
    list->dtor(user, ptr);
}
