
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ulk_pid; scalar_t__ ulk_addr; } ;
struct TYPE_8__ {int ull_refcount; int ull_bucket_index; int ull_hash_link; TYPE_1__ ull_key; } ;
typedef TYPE_2__ ull_t ;


 int assert (int) ;
 int remqueue (int *) ;
 int ull_assert_owned (TYPE_2__*) ;
 int ull_bucket_lock (int ) ;
 int ull_bucket_unlock (int ) ;
 int ull_free (TYPE_2__*) ;
 int ull_unlock (TYPE_2__*) ;

__attribute__((used)) static void
ull_put(ull_t *ull)
{
 ull_assert_owned(ull);
 int refcount = --ull->ull_refcount;
 assert(refcount == 0 ? (ull->ull_key.ulk_pid == 0 && ull->ull_key.ulk_addr == 0) : 1);
 ull_unlock(ull);

 if (refcount > 0) {
  return;
 }

 ull_bucket_lock(ull->ull_bucket_index);
 remqueue(&ull->ull_hash_link);
 ull_bucket_unlock(ull->ull_bucket_index);

 ull_free(ull);
}
