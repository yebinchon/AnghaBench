
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slist_wc {struct curl_slist* last; struct curl_slist* first; } ;
struct curl_slist {struct curl_slist* next; } ;


 struct curl_slist* curl_slist_append (int *,char const*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 struct slist_wc* malloc (int) ;

struct slist_wc *slist_wc_append(struct slist_wc *list,
                                 const char *data)
{
  struct curl_slist *new_item = curl_slist_append(((void*)0), data);

  if(!new_item)
    return ((void*)0);

  if(!list) {
    list = malloc(sizeof(struct slist_wc));

    if(!list) {
      curl_slist_free_all(new_item);
      return ((void*)0);
    }

    list->first = new_item;
    list->last = new_item;
    return list;
  }

  list->last->next = new_item;
  list->last = list->last->next;
  return list;
}
