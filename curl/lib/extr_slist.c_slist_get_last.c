
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {struct curl_slist* next; } ;



__attribute__((used)) static struct curl_slist *slist_get_last(struct curl_slist *list)
{
  struct curl_slist *item;


  if(!list)
    return ((void*)0);


  item = list;
  while(item->next) {
    item = item->next;
  }
  return item;
}
