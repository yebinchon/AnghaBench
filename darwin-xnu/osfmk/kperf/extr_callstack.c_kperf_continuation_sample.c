
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct kperf_context {TYPE_1__* cur_thread; } ;
struct callstack {int flags; int nframes; int * frames; } ;
struct TYPE_2__ {int * continuation; } ;


 int CALLSTACK_64BIT ;
 int CALLSTACK_CONTINUATION ;
 int CALLSTACK_KERNEL ;
 int CALLSTACK_VALID ;
 int VM_KERNEL_UNSLIDE (int *) ;
 int assert (int ) ;

void
kperf_continuation_sample(struct callstack *cs, struct kperf_context *context)
{
 thread_t thread;

 assert(cs != ((void*)0));
 assert(context != ((void*)0));

 thread = context->cur_thread;
 assert(thread != ((void*)0));
 assert(thread->continuation != ((void*)0));

 cs->flags = CALLSTACK_CONTINUATION | CALLSTACK_VALID | CALLSTACK_KERNEL;

 cs->flags |= CALLSTACK_64BIT;


 cs->nframes = 1;
 cs->frames[0] = VM_KERNEL_UNSLIDE(thread->continuation);
}
