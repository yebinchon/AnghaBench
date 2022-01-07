
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ull_owner; scalar_t__ ull_turnstile; } ;
typedef TYPE_1__ ull_t ;


 scalar_t__ THREAD_NULL ;
 scalar_t__ TURNSTILE_NULL ;
 int assert (int) ;
 int ull_assert_notwned (TYPE_1__*) ;
 int ull_lock_destroy (TYPE_1__*) ;
 int ull_zone ;
 int zfree (int ,TYPE_1__*) ;

__attribute__((used)) static void
ull_free(ull_t *ull)
{
 assert(ull->ull_owner == THREAD_NULL);
 assert(ull->ull_turnstile == TURNSTILE_NULL);

 ull_assert_notwned(ull);

 ull_lock_destroy(ull);

 zfree(ull_zone, ull);
}
