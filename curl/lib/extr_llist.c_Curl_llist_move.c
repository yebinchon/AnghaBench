
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist_element {struct curl_llist_element* next; struct curl_llist_element* prev; } ;
struct curl_llist {scalar_t__ size; struct curl_llist_element* tail; struct curl_llist_element* head; } ;



void Curl_llist_move(struct curl_llist *list, struct curl_llist_element *e,
                     struct curl_llist *to_list,
                     struct curl_llist_element *to_e)
{

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
    e->prev->next = e->next;
    if(!e->next)
      list->tail = e->prev;
    else
      e->next->prev = e->prev;
  }

  --list->size;


  if(to_list->size == 0) {
    to_list->head = e;
    to_list->head->prev = ((void*)0);
    to_list->head->next = ((void*)0);
    to_list->tail = e;
  }
  else {
    e->next = to_e->next;
    e->prev = to_e;
    if(to_e->next) {
      to_e->next->prev = e;
    }
    else {
      to_list->tail = e;
    }
    to_e->next = e;
  }

  ++to_list->size;
}
