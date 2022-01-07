
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_llist {int dummy; } ;
struct curl_hash {int slots; int * table; scalar_t__ size; scalar_t__ dtor; scalar_t__ comp_func; scalar_t__ hash_func; } ;
typedef scalar_t__ hash_function ;
typedef int curl_llist_dtor ;
typedef scalar_t__ curl_hash_dtor ;
typedef scalar_t__ comp_function ;


 int Curl_llist_init (int *,int ) ;
 scalar_t__ hash_element_dtor ;
 int * malloc (int) ;

int
Curl_hash_init(struct curl_hash *h,
               int slots,
               hash_function hfunc,
               comp_function comparator,
               curl_hash_dtor dtor)
{
  if(!slots || !hfunc || !comparator ||!dtor) {
    return 1;
  }

  h->hash_func = hfunc;
  h->comp_func = comparator;
  h->dtor = dtor;
  h->size = 0;
  h->slots = slots;

  h->table = malloc(slots * sizeof(struct curl_llist));
  if(h->table) {
    int i;
    for(i = 0; i < slots; ++i)
      Curl_llist_init(&h->table[i], (curl_llist_dtor) hash_element_dtor);
    return 0;
  }
  h->slots = 0;
  return 1;
}
