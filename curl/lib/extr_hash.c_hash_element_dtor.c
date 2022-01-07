
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash_element {scalar_t__ key_len; int * ptr; } ;
struct curl_hash {int (* dtor ) (int *) ;} ;


 int free (struct curl_hash_element*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
hash_element_dtor(void *user, void *element)
{
  struct curl_hash *h = (struct curl_hash *) user;
  struct curl_hash_element *e = (struct curl_hash_element *) element;

  if(e->ptr) {
    h->dtor(e->ptr);
    e->ptr = ((void*)0);
  }

  e->key_len = 0;

  free(e);
}
