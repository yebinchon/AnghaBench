
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist {scalar_t__ size; int tail; } ;


 int Curl_llist_remove (struct curl_llist*,int ,void*) ;

void
Curl_llist_destroy(struct curl_llist *list, void *user)
{
  if(list) {
    while(list->size > 0)
      Curl_llist_remove(list, list->tail, user);
  }
}
