
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct affinity_set {int dummy; } ;
typedef TYPE_1__* affinity_set_t ;
struct TYPE_4__ {int * aset_space; int aset_pset; scalar_t__ aset_num; int aset_threads; int aset_affinities; scalar_t__ aset_thread_count; } ;


 int DBG (char*,TYPE_1__*) ;
 int PROCESSOR_SET_NULL ;
 scalar_t__ kalloc (int) ;
 int queue_init (int *) ;

__attribute__((used)) static affinity_set_t
affinity_set_alloc(void)
{
 affinity_set_t aset;

 aset = (affinity_set_t) kalloc(sizeof(struct affinity_set));
 if (aset == ((void*)0))
  return ((void*)0);

 aset->aset_thread_count = 0;
 queue_init(&aset->aset_affinities);
 queue_init(&aset->aset_threads);
 aset->aset_num = 0;
 aset->aset_pset = PROCESSOR_SET_NULL;
 aset->aset_space = ((void*)0);

 DBG("affinity_set_create() returns %p\n", aset);
 return aset;
}
