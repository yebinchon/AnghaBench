
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dcr_action; } ;
struct TYPE_7__ {TYPE_1__ dts_cred; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_9__ {size_t cpu_id; } ;
struct TYPE_8__ {int cpuc_dtrace_flags; } ;


 TYPE_5__* CPU ;
 int CPU_DTRACE_KPRIV ;
 int DTRACE_CRA_KERNEL ;
 TYPE_4__* cpu_core ;
 int dtrace_are_restrictions_relaxed () ;
 scalar_t__ dtrace_is_restricted () ;

__attribute__((used)) static int
dtrace_priv_kernel(dtrace_state_t *state)
{
 if (dtrace_is_restricted() && !dtrace_are_restrictions_relaxed())
  goto bad;

 if (state->dts_cred.dcr_action & DTRACE_CRA_KERNEL)
  return (1);

bad:
 cpu_core[CPU->cpu_id].cpuc_dtrace_flags |= CPU_DTRACE_KPRIV;

 return (0);
}
