
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {TYPE_2__* final; TYPE_2__* last; int * perm_null; TYPE_2__* first; TYPE_2__* start; scalar_t__ pg_size; } ;
typedef TYPE_1__ heap_cntrl ;
struct TYPE_9__ {void* front_flag; void* back_flag; int prev; int next; } ;
typedef TYPE_2__ heap_block ;


 scalar_t__ HEAP_BLOCK_USED_OVERHEAD ;
 void* HEAP_DUMMY_FLAG ;
 scalar_t__ HEAP_MIN_SIZE ;
 scalar_t__ HEAP_OVERHEAD ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 int __lwp_heap_head (TYPE_1__*) ;
 TYPE_2__* __lwp_heap_nextblock (TYPE_2__*) ;
 int __lwp_heap_pgsize_valid (scalar_t__) ;
 int __lwp_heap_tail (TYPE_1__*) ;

u32 __lwp_heap_init(heap_cntrl *theheap,void *start_addr,u32 size,u32 pg_size)
{
 u32 dsize,level;
 heap_block *block;

 if(!__lwp_heap_pgsize_valid(pg_size) || size<HEAP_MIN_SIZE) return 0;

 _CPU_ISR_Disable(level);
 theheap->pg_size = pg_size;
 dsize = (size - HEAP_OVERHEAD);

 block = (heap_block*)start_addr;
 block->back_flag = HEAP_DUMMY_FLAG;
 block->front_flag = dsize;
 block->next = __lwp_heap_tail(theheap);
 block->prev = __lwp_heap_head(theheap);

 theheap->start = block;
 theheap->first = block;
 theheap->perm_null = ((void*)0);
 theheap->last = block;

 block = __lwp_heap_nextblock(block);
 block->back_flag = dsize;
 block->front_flag = HEAP_DUMMY_FLAG;
 theheap->final = block;
 _CPU_ISR_Restore(level);

 return (dsize - HEAP_BLOCK_USED_OVERHEAD);
}
