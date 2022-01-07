
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int done; TYPE_2__* super; int userdata; int (* func ) (TYPE_1__* const,int ) ;} ;
typedef TYPE_1__ ccv_nnc_stream_task_t ;
struct TYPE_6__ {int caller; int callee; } ;
typedef TYPE_2__ ccv_nnc_stream_scheduler_t ;
struct TYPE_7__ {scalar_t__ ptr; int part; } ;
typedef TYPE_3__ ccv_nnc_ptr_splitter_u ;


 int stub1 (TYPE_1__* const,int ) ;
 int swapcontext (int *,int *) ;

__attribute__((used)) static void _ccv_nnc_stream_task_entry_point(uint32_t part0, uint32_t part1)
{
 const ccv_nnc_ptr_splitter_u p = {
  .part = {
   part0, part1
  }
 };
 ccv_nnc_stream_task_t* const task = (ccv_nnc_stream_task_t*)p.ptr;
 task->func(task, task->userdata);
 ccv_nnc_stream_scheduler_t* const scheduler = task->super;
 task->done = 1;
 swapcontext(&scheduler->callee, &scheduler->caller);
}
