
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist {int * tail; int * head; int dtor; scalar_t__ size; } ;
typedef int curl_llist_dtor ;



void
Curl_llist_init(struct curl_llist *l, curl_llist_dtor dtor)
{
  l->size = 0;
  l->dtor = dtor;
  l->head = ((void*)0);
  l->tail = ((void*)0);
}
