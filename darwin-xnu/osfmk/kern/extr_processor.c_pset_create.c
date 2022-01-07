
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* pset_node_t ;
typedef TYPE_2__* processor_set_t ;
struct TYPE_11__ {struct TYPE_11__* pset_list; } ;
struct TYPE_10__ {TYPE_2__* psets; } ;


 scalar_t__ FALSE ;
 TYPE_2__* PROCESSOR_SET_NULL ;
 scalar_t__ SCHED (int ) ;
 TYPE_2__* kalloc (int) ;
 int master_processor ;
 int multiple_psets_enabled ;
 TYPE_2__* processor_pset (int ) ;
 int pset_init (TYPE_2__*,TYPE_1__*) ;
 int pset_node_lock ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

processor_set_t
pset_create(
 pset_node_t node)
{

 if (SCHED(multiple_psets_enabled) == FALSE)
  return processor_pset(master_processor);

 processor_set_t *prev, pset = kalloc(sizeof (*pset));

 if (pset != PROCESSOR_SET_NULL) {
  pset_init(pset, node);

  simple_lock(&pset_node_lock);

  prev = &node->psets;
  while (*prev != PROCESSOR_SET_NULL)
   prev = &(*prev)->pset_list;

  *prev = pset;

  simple_unlock(&pset_node_lock);
 }

 return (pset);
}
