
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {scalar_t__ used_size; scalar_t__ used_blocks; scalar_t__ free_size; scalar_t__ free_blocks; } ;
typedef TYPE_1__ heap_iblock ;
struct TYPE_11__ {TYPE_3__* start; } ;
typedef TYPE_2__ heap_cntrl ;
struct TYPE_12__ {scalar_t__ back_flag; scalar_t__ front_flag; } ;
typedef TYPE_3__ heap_block ;


 scalar_t__ HEAP_DUMMY_FLAG ;
 scalar_t__ __lwp_heap_blockfree (TYPE_3__*) ;
 scalar_t__ __lwp_heap_blocksize (TYPE_3__*) ;
 TYPE_3__* __lwp_heap_nextblock (TYPE_3__*) ;
 int __sys_state_get () ;
 int __sys_state_up (int ) ;

u32 __lwp_heap_getinfo(heap_cntrl *theheap,heap_iblock *theinfo)
{
 u32 not_done = 1;
 heap_block *theblock = ((void*)0);
 heap_block *nextblock = ((void*)0);

 theinfo->free_blocks = 0;
 theinfo->free_size = 0;
 theinfo->used_blocks = 0;
 theinfo->used_size = 0;

 if(!__sys_state_up(__sys_state_get())) return 1;

 theblock = theheap->start;
 if(theblock->back_flag!=HEAP_DUMMY_FLAG) return 2;

 while(not_done) {
  if(__lwp_heap_blockfree(theblock)) {
   theinfo->free_blocks++;
   theinfo->free_size += __lwp_heap_blocksize(theblock);
  } else {
   theinfo->used_blocks++;
   theinfo->used_size += __lwp_heap_blocksize(theblock);
  }

  if(theblock->front_flag!=HEAP_DUMMY_FLAG) {
   nextblock = __lwp_heap_nextblock(theblock);
   if(theblock->front_flag!=nextblock->back_flag) return 2;
  }

  if(theblock->front_flag==HEAP_DUMMY_FLAG)
   not_done = 0;
  else
   theblock = nextblock;
 }
 return 0;
}
