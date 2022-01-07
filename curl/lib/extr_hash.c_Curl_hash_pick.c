
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist_element {struct curl_hash_element* ptr; struct curl_llist_element* next; } ;
struct curl_llist {struct curl_llist_element* head; } ;
struct curl_hash_element {void* ptr; int key_len; int key; } ;
struct curl_hash {scalar_t__ (* comp_func ) (int ,int ,void*,size_t) ;} ;


 struct curl_llist* FETCH_LIST (struct curl_hash*,void*,size_t) ;
 scalar_t__ stub1 (int ,int ,void*,size_t) ;

void *
Curl_hash_pick(struct curl_hash *h, void *key, size_t key_len)
{
  struct curl_llist_element *le;
  struct curl_llist *l;

  if(h) {
    l = FETCH_LIST(h, key, key_len);
    for(le = l->head; le; le = le->next) {
      struct curl_hash_element *he = le->ptr;
      if(h->comp_func(he->key, he->key_len, key, key_len)) {
        return he->ptr;
      }
    }
  }

  return ((void*)0);
}
