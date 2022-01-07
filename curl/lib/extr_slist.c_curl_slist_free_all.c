
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int data; struct curl_slist* next; } ;


 int Curl_safefree (int ) ;
 int free (struct curl_slist*) ;

void curl_slist_free_all(struct curl_slist *list)
{
  struct curl_slist *next;
  struct curl_slist *item;

  if(!list)
    return;

  item = list;
  do {
    next = item->next;
    Curl_safefree(item->data);
    free(item);
    item = next;
  } while(next);
}
