
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dcr_destructive; } ;
struct TYPE_5__ {scalar_t__ dts_activity; scalar_t__* dts_options; TYPE_1__ dts_cred; } ;
typedef TYPE_2__ dtrace_state_t ;
typedef scalar_t__ dtrace_optval_t ;
typedef int dtrace_optid_t ;




 int DTRACEOPT_CPU ;


 int DTRACEOPT_MAX ;


 scalar_t__ DTRACE_ACTIVITY_INACTIVE ;
 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ LONG_MAX ;
 int dtrace_destructive_disallow ;
 int dtrace_is_restricted () ;
 int dtrace_lock ;

__attribute__((used)) static int
dtrace_state_option(dtrace_state_t *state, dtrace_optid_t option,
    dtrace_optval_t val)
{
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (state->dts_activity != DTRACE_ACTIVITY_INACTIVE)
  return (EBUSY);

 if (option >= DTRACEOPT_MAX)
  return (EINVAL);

 if (option != DTRACEOPT_CPU && val < 0)
  return (EINVAL);

 switch (option) {
 case 131:





  if (dtrace_is_restricted() || dtrace_destructive_disallow)
   return (EACCES);

  state->dts_cred.dcr_destructive = 1;
  break;

 case 132:
 case 130:
 case 133:
 case 129:
 case 128:
  if (val < 0)
   return (EINVAL);

  if (val >= LONG_MAX) {
   val = LONG_MAX - (1 << 27) + 1;
  }
 }

 state->dts_options[option] = val;

 return (0);
}
