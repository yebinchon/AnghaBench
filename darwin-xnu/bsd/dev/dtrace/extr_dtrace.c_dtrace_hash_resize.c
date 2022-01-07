
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* dthb_next; void* dthb_chain; } ;
typedef TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_8__ {int dth_size; int dth_mask; TYPE_1__** dth_tab; } ;
typedef TYPE_2__ dtrace_hash_t ;


 int ASSERT (int) ;
 int DTRACE_HASHSTR (TYPE_2__*,void*) ;
 int KM_SLEEP ;
 int kmem_free (TYPE_1__**,int) ;
 TYPE_1__** kmem_zalloc (int,int ) ;

__attribute__((used)) static void
dtrace_hash_resize(dtrace_hash_t *hash)
{
 int size = hash->dth_size, i, ndx;
 int new_size = hash->dth_size << 1;
 int new_mask = new_size - 1;
 dtrace_hashbucket_t **new_tab, *bucket, *next;

 ASSERT((new_size & new_mask) == 0);

 new_tab = kmem_zalloc(new_size * sizeof (void *), KM_SLEEP);

 for (i = 0; i < size; i++) {
  for (bucket = hash->dth_tab[i]; bucket != ((void*)0); bucket = next) {
   void *elm = bucket->dthb_chain;

   ASSERT(elm != ((void*)0));
   ndx = DTRACE_HASHSTR(hash, elm) & new_mask;

   next = bucket->dthb_next;
   bucket->dthb_next = new_tab[ndx];
   new_tab[ndx] = bucket;
  }
 }

 kmem_free(hash->dth_tab, hash->dth_size * sizeof (void *));
 hash->dth_tab = new_tab;
 hash->dth_size = new_size;
 hash->dth_mask = new_mask;
}
