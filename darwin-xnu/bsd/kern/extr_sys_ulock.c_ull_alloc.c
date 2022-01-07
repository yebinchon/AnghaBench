
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ull_refcount; int ull_turnstile; int ull_owner; scalar_t__ ull_opcode; scalar_t__ ull_max_nwaiters; scalar_t__ ull_nwaiters; int ull_bucket_index; void* ull_saved_key; void* ull_key; } ;
typedef TYPE_1__ ull_t ;
typedef void* ulk_t ;


 int THREAD_NULL ;
 int TURNSTILE_NULL ;
 int ULL_INDEX (void**) ;
 int assert (int ) ;
 int ull_lock_init (TYPE_1__*) ;
 int ull_nzalloc ;
 int ull_zone ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static ull_t *
ull_alloc(ulk_t *key)
{
 ull_t *ull = (ull_t *)zalloc(ull_zone);
 assert(ull != ((void*)0));

 ull->ull_refcount = 1;
 ull->ull_key = *key;
 ull->ull_saved_key = *key;
 ull->ull_bucket_index = ULL_INDEX(key);
 ull->ull_nwaiters = 0;
 ull->ull_max_nwaiters = 0;
 ull->ull_opcode = 0;

 ull->ull_owner = THREAD_NULL;
 ull->ull_turnstile = TURNSTILE_NULL;

 ull_lock_init(ull);

 ull_nzalloc++;
 return ull;
}
