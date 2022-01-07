
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mtrace {int allocs; scalar_t__ depth; scalar_t__ collisions; int addr; int hitcount; } ;
struct mallocation {size_t trace_index; int count; int * element; int hitcount; } ;
typedef int mcache_obj_t ;
typedef int boolean_t ;
struct TYPE_2__ {int outstanding_allocs; int alloc_recorded; int alloc_overwrites; int alloc_collisions; int trace_recorded; int trace_overwrites; int trace_collisions; int total_conflicts; } ;


 int FALSE ;
 int TRUE ;
 int VERIFY (int) ;
 scalar_t__ bcmp (int ,uintptr_t*,size_t) ;
 size_t hashaddr (uintptr_t,int) ;
 size_t hashbacktrace (uintptr_t*,size_t,int) ;
 int lck_mtx_try_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int memcpy (int ,uintptr_t*,size_t) ;
 int mleak_alloc_buckets ;
 struct mallocation* mleak_allocations ;
 int mleak_lock ;
 TYPE_1__ mleak_table ;
 int mleak_trace_buckets ;
 struct mtrace* mleak_traces ;

__attribute__((used)) static boolean_t
mleak_log(uintptr_t *bt, mcache_obj_t *addr, uint32_t depth, int num)
{
 struct mallocation *allocation;
 struct mtrace *trace;
 uint32_t trace_index;


 if (!lck_mtx_try_lock_spin(mleak_lock)) {
  mleak_table.total_conflicts++;
  return (FALSE);
 }

 allocation = &mleak_allocations[hashaddr((uintptr_t)addr,
     mleak_alloc_buckets)];
 trace_index = hashbacktrace(bt, depth, mleak_trace_buckets);
 trace = &mleak_traces[trace_index];

 VERIFY(allocation <= &mleak_allocations[mleak_alloc_buckets - 1]);
 VERIFY(trace <= &mleak_traces[mleak_trace_buckets - 1]);

 allocation->hitcount++;
 trace->hitcount++;





 if (allocation->element != ((void*)0) &&
     trace_index == allocation->trace_index) {
  mleak_table.alloc_collisions++;
  lck_mtx_unlock(mleak_lock);
  return (TRUE);
 }





 if (trace->allocs > 0 &&
     bcmp(trace->addr, bt, (depth * sizeof (uintptr_t))) != 0) {

  trace->collisions++;
  mleak_table.trace_collisions++;
  lck_mtx_unlock(mleak_lock);
  return (TRUE);
 } else if (trace->allocs > 0) {

  trace->allocs++;
 } else {

  if (trace->depth != 0) {

   mleak_table.trace_overwrites++;
  }
  mleak_table.trace_recorded++;
  trace->allocs = 1;
  memcpy(trace->addr, bt, (depth * sizeof (uintptr_t)));
  trace->depth = depth;
  trace->collisions = 0;
 }


 if (allocation->element != ((void*)0)) {





  mleak_table.alloc_collisions++;
 } else if (allocation->trace_index != 0) {
  mleak_table.alloc_overwrites++;
 }
 allocation->element = addr;
 allocation->trace_index = trace_index;
 allocation->count = num;
 mleak_table.alloc_recorded++;
 mleak_table.outstanding_allocs++;

 lck_mtx_unlock(mleak_lock);
 return (TRUE);
}
