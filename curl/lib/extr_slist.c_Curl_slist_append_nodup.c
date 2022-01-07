
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {char* data; struct curl_slist* next; } ;


 int DEBUGASSERT (char*) ;
 struct curl_slist* malloc (int) ;
 struct curl_slist* slist_get_last (struct curl_slist*) ;

struct curl_slist *Curl_slist_append_nodup(struct curl_slist *list, char *data)
{
  struct curl_slist *last;
  struct curl_slist *new_item;

  DEBUGASSERT(data);

  new_item = malloc(sizeof(struct curl_slist));
  if(!new_item)
    return ((void*)0);

  new_item->next = ((void*)0);
  new_item->data = data;


  if(!list)
    return new_item;

  last = slist_get_last(list);
  last->next = new_item;
  return list;
}
