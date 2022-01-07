
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {uintptr_t kernel_stack; } ;


 int IN_STK_BOUNDS (uintptr_t*) ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 uintptr_t kernel_stack_size ;

uint32_t __attribute__((noinline,not_tail_called))
backtrace_frame(uintptr_t *bt, uint32_t max_frames, void *start_frame)
{
 thread_t thread = current_thread();
 uintptr_t *fp;
 uint32_t frame_index = 0;
 uintptr_t top, bottom;
 bool in_valid_stack;

 assert(bt != ((void*)0));
 assert(max_frames > 0);

 fp = start_frame;
 bottom = thread->kernel_stack;
 top = bottom + kernel_stack_size;





 in_valid_stack = (((uintptr_t)(fp) >= (uintptr_t)bottom) && ((uintptr_t)(fp) < (uintptr_t)top));

 if (!in_valid_stack) {
  fp = ((void*)0);
 }

 while (fp != ((void*)0) && frame_index < max_frames) {
  uintptr_t *next_fp = (uintptr_t *)*fp;
  uintptr_t ret_addr = *(fp + 1);






  in_valid_stack = (((uintptr_t)(next_fp) >= (uintptr_t)bottom) && ((uintptr_t)(next_fp) < (uintptr_t)top));

  if (next_fp == ((void*)0) || !in_valid_stack)
  {
   break;
  }

  bt[frame_index++] = ret_addr;


  if (next_fp <= fp) {
   break;
  }
  fp = next_fp;
 }

 return frame_index;

}
