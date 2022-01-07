
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* pset_node_t ;
typedef TYPE_2__* processor_set_t ;
struct TYPE_7__ {scalar_t__ pset_cluster_id; struct TYPE_7__* pset_list; } ;
struct TYPE_6__ {TYPE_2__* psets; struct TYPE_6__* node_list; } ;


 TYPE_1__ pset_node0 ;
 int pset_node_lock ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

processor_set_t
pset_find(
 uint32_t cluster_id,
 processor_set_t default_pset)
{
 simple_lock(&pset_node_lock);
 pset_node_t node = &pset_node0;
 processor_set_t pset = ((void*)0);

 do {
  pset = node->psets;
  while (pset != ((void*)0)) {
   if (pset->pset_cluster_id == cluster_id)
    break;
   pset = pset->pset_list;
  }
 } while ((node = node->node_list) != ((void*)0));
 simple_unlock(&pset_node_lock);
 if (pset == ((void*)0))
  return default_pset;
 return (pset);
}
