
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist_element {scalar_t__ ptr; struct curl_llist_element* next; } ;
struct curl_llist {int tail; struct curl_llist_element* head; } ;
struct curl_hash_element {int list; int key_len; int key; } ;
struct curl_hash {int size; scalar_t__ (* comp_func ) (int ,int ,void*,size_t) ;} ;


 int Curl_llist_insert_next (struct curl_llist*,int ,struct curl_hash_element*,int *) ;
 int Curl_llist_remove (struct curl_llist*,struct curl_llist_element*,void*) ;
 struct curl_llist* FETCH_LIST (struct curl_hash*,void*,size_t) ;
 struct curl_hash_element* mk_hash_element (void*,size_t,void*) ;
 scalar_t__ stub1 (int ,int ,void*,size_t) ;

void *
Curl_hash_add(struct curl_hash *h, void *key, size_t key_len, void *p)
{
  struct curl_hash_element *he;
  struct curl_llist_element *le;
  struct curl_llist *l = FETCH_LIST(h, key, key_len);

  for(le = l->head; le; le = le->next) {
    he = (struct curl_hash_element *) le->ptr;
    if(h->comp_func(he->key, he->key_len, key, key_len)) {
      Curl_llist_remove(l, le, (void *)h);
      --h->size;
      break;
    }
  }

  he = mk_hash_element(key, key_len, p);
  if(he) {
    Curl_llist_insert_next(l, l->tail, he, &he->list);
    ++h->size;
    return p;
  }

  return ((void*)0);
}
