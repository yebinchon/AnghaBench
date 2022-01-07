
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist_element {struct curl_llist_element* next; struct curl_hash_element* ptr; } ;
struct curl_llist {struct curl_llist_element* head; } ;
struct curl_hash_element {void* ptr; } ;
struct curl_hash {int slots; int size; struct curl_llist* table; } ;


 int Curl_llist_remove (struct curl_llist*,struct curl_llist_element*,void*) ;

void
Curl_hash_clean_with_criterium(struct curl_hash *h, void *user,
                               int (*comp)(void *, void *))
{
  struct curl_llist_element *le;
  struct curl_llist_element *lnext;
  struct curl_llist *list;
  int i;

  if(!h)
    return;

  for(i = 0; i < h->slots; ++i) {
    list = &h->table[i];
    le = list->head;
    while(le) {
      struct curl_hash_element *he = le->ptr;
      lnext = le->next;

      if(comp == ((void*)0) || comp(user, he->ptr)) {
        Curl_llist_remove(list, le, (void *) h);
        --h->size;
      }
      le = lnext;
    }
  }
}
