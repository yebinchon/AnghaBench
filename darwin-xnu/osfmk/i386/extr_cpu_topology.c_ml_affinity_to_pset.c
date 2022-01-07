
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; int pset; struct TYPE_3__* next; } ;
typedef TYPE_1__ x86_affinity_set_t ;
typedef scalar_t__ uint32_t ;
typedef int processor_set_t ;


 int PROCESSOR_SET_NULL ;
 TYPE_1__* x86_affinities ;

processor_set_t
ml_affinity_to_pset(uint32_t affinity_num)
{
 x86_affinity_set_t *aset;

 for (aset = x86_affinities; aset != ((void*)0); aset = aset->next) {
  if (affinity_num == aset->num)
   break;
 }
 return (aset == ((void*)0)) ? PROCESSOR_SET_NULL : aset->pset;
}
