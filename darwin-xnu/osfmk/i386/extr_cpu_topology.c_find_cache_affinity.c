
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86_cpu_cache_t ;
struct TYPE_4__ {int * cache; struct TYPE_4__* next; } ;
typedef TYPE_1__ x86_affinity_set_t ;


 TYPE_1__* x86_affinities ;

__attribute__((used)) static x86_affinity_set_t *
find_cache_affinity(x86_cpu_cache_t *l2_cachep)
{
 x86_affinity_set_t *aset;

 for (aset = x86_affinities; aset != ((void*)0); aset = aset->next) {
  if (l2_cachep == aset->cache)
   break;
 }
 return aset;
}
