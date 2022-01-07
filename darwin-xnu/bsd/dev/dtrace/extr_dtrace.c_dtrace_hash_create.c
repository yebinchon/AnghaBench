
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_strkey_f ;
typedef int dtrace_hashbucket_t ;
struct TYPE_3__ {uintptr_t dth_stroffs; uintptr_t dth_nextoffs; uintptr_t dth_prevoffs; int dth_size; int dth_mask; void* dth_tab; int dth_getstr; } ;
typedef TYPE_1__ dtrace_hash_t ;


 int KM_SLEEP ;
 void* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_hash_t *
dtrace_hash_create(dtrace_strkey_f func, uintptr_t arg, uintptr_t nextoffs, uintptr_t prevoffs)
{
 dtrace_hash_t *hash = kmem_zalloc(sizeof (dtrace_hash_t), KM_SLEEP);

 hash->dth_getstr = func;
 hash->dth_stroffs = arg;
 hash->dth_nextoffs = nextoffs;
 hash->dth_prevoffs = prevoffs;

 hash->dth_size = 1;
 hash->dth_mask = hash->dth_size - 1;

 hash->dth_tab = kmem_zalloc(hash->dth_size *
     sizeof (dtrace_hashbucket_t *), KM_SLEEP);

 return (hash);
}
