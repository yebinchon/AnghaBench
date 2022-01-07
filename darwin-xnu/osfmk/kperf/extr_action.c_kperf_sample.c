
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kperf_sample {int dummy; } ;
struct kperf_context {int cur_pid; } ;
typedef int kern_return_t ;
struct TYPE_2__ {int pid_filter; unsigned int sample; int ucallstack_depth; } ;


 int SAMPLE_CONTINUE ;
 int SAMPLE_SHUTDOWN ;
 unsigned int actionc ;
 TYPE_1__* actionv ;
 int kperf_sample_internal (struct kperf_sample*,struct kperf_context*,unsigned int,unsigned int,unsigned int,int ) ;

kern_return_t
kperf_sample(struct kperf_sample *sbuf,
             struct kperf_context *context,
             unsigned actionid, unsigned sample_flags)
{

 if ((actionid > actionc) || (actionid == 0)) {
  return SAMPLE_SHUTDOWN;
 }




 int pid_filter = actionv[actionid - 1].pid_filter;
 if ((pid_filter != -1) && (pid_filter != context->cur_pid)) {
  return SAMPLE_CONTINUE;
 }


 unsigned int sample_what = actionv[actionid - 1].sample;


 return kperf_sample_internal(sbuf, context, sample_what,
                              sample_flags, actionid,
                              actionv[actionid - 1].ucallstack_depth);
}
