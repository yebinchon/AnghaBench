
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int dts_arg_error_illval; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_epid_t ;


 int dtrace_probe (int ,int ,int ,int,int,int) ;
 int dtrace_probeid_error ;

void
dtrace_probe_error(dtrace_state_t *state, dtrace_epid_t epid, int which,
  int fltoffs, int fault, uint64_t illval)
{





 state->dts_arg_error_illval = illval;
 dtrace_probe( dtrace_probeid_error, (uint64_t)(uintptr_t)state, epid, which, fltoffs, fault );
}
