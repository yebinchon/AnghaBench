
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int slots; scalar_t__ size; int * table; } ;


 int Curl_llist_destroy (int *,void*) ;
 int Curl_safefree (int *) ;

void
Curl_hash_destroy(struct curl_hash *h)
{
  int i;

  for(i = 0; i < h->slots; ++i) {
    Curl_llist_destroy(&h->table[i], (void *) h);
  }

  Curl_safefree(h->table);
  h->size = 0;
  h->slots = 0;
}
