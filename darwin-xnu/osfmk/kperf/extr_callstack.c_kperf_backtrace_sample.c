
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_context {scalar_t__ cur_thread; int starting_fp; } ;
struct callstack {int flags; int nframes; scalar_t__* frames; } ;


 int BUF_VERB (int,int) ;
 int CALLSTACK_64BIT ;
 int CALLSTACK_KERNEL ;
 int CALLSTACK_KERNEL_WORDS ;
 int CALLSTACK_VALID ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PERF_CS_BACKTRACE ;
 int assert (int) ;
 int backtrace_frame (uintptr_t*,int,int ) ;
 scalar_t__ current_thread () ;

void
kperf_backtrace_sample(struct callstack *cs, struct kperf_context *context)
{
 assert(cs != ((void*)0));
 assert(context != ((void*)0));
 assert(context->cur_thread == current_thread());

 cs->flags = CALLSTACK_KERNEL | CALLSTACK_KERNEL_WORDS;

 cs->flags |= CALLSTACK_64BIT;


 BUF_VERB(PERF_CS_BACKTRACE | DBG_FUNC_START, 1);

 cs->nframes = backtrace_frame((uintptr_t *)&(cs->frames), cs->nframes - 1,
                               context->starting_fp);
 if (cs->nframes > 0) {
  cs->flags |= CALLSTACK_VALID;




  cs->frames[cs->nframes + 1] = 0;
  cs->nframes += 1;
 }

 BUF_VERB(PERF_CS_BACKTRACE | DBG_FUNC_END, cs->nframes);
}
