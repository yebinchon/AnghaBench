
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dts_nspeculations; int dts_aggbuffer; int dts_buffer; TYPE_2__* dts_speculations; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_6__ {int dtsp_buffer; } ;
typedef TYPE_2__ dtrace_speculation_t ;


 int DTRACEOPT_AGGSIZE ;
 int DTRACEOPT_BUFSIZE ;
 int DTRACEOPT_SPECSIZE ;
 int dtrace_state_buffer (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
dtrace_state_buffers(dtrace_state_t *state)
{
 dtrace_speculation_t *spec = state->dts_speculations;
 int rval, i;

 if ((rval = dtrace_state_buffer(state, state->dts_buffer,
     DTRACEOPT_BUFSIZE)) != 0)
  return (rval);

 if ((rval = dtrace_state_buffer(state, state->dts_aggbuffer,
     DTRACEOPT_AGGSIZE)) != 0)
  return (rval);

 for (i = 0; i < state->dts_nspeculations; i++) {
  if ((rval = dtrace_state_buffer(state,
      spec[i].dtsp_buffer, DTRACEOPT_SPECSIZE)) != 0)
   return (rval);
 }

 return (0);
}
