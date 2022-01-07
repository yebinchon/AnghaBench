
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* priority_queue_entry_t ;
typedef int priority_queue_compare_fn_t ;
struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; } ;


 int assert (TYPE_1__*) ;
 TYPE_1__* pqueue_merge (TYPE_1__*,TYPE_1__*,int ) ;

priority_queue_entry_t
pqueue_pair_meld(priority_queue_entry_t elt, priority_queue_compare_fn_t cmp_fn)
{
 priority_queue_entry_t pq_meld_result = ((void*)0);
 priority_queue_entry_t pair_list = ((void*)0);

 assert(elt);





 do {

  priority_queue_entry_t pair_item_a = elt;
  priority_queue_entry_t pair_item_b = elt->next;
  if (pair_item_b == ((void*)0)) {


   pair_item_a->prev = pair_list;
   pair_list = pair_item_a;
   break;
  }

  elt = pair_item_b->next;
  priority_queue_entry_t pair = pqueue_merge(pair_item_a, pair_item_b, cmp_fn);

  pair->prev = pair_list;
  pair_list = pair;
 } while (elt != ((void*)0));


 do {
  elt = pair_list->prev;
  pq_meld_result = pqueue_merge(pq_meld_result, pair_list, cmp_fn);
  pair_list = elt;
 } while (pair_list != ((void*)0));

 return pq_meld_result;
}
