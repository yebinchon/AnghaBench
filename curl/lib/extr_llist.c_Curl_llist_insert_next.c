
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist_element {struct curl_llist_element* next; struct curl_llist_element* prev; void* ptr; } ;
struct curl_llist {scalar_t__ size; struct curl_llist_element* tail; struct curl_llist_element* head; } ;



void
Curl_llist_insert_next(struct curl_llist *list, struct curl_llist_element *e,
                       const void *p,
                       struct curl_llist_element *ne)
{
  ne->ptr = (void *) p;
  if(list->size == 0) {
    list->head = ne;
    list->head->prev = ((void*)0);
    list->head->next = ((void*)0);
    list->tail = ne;
  }
  else {

    ne->next = e?e->next:list->head;
    ne->prev = e;
    if(!e) {
      list->head->prev = ne;
      list->head = ne;
    }
    else if(e->next) {
      e->next->prev = ne;
    }
    else {
      list->tail = ne;
    }
    if(e)
      e->next = ne;
  }

  ++list->size;
}
