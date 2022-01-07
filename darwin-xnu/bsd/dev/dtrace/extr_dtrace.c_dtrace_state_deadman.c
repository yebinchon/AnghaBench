
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ hrtime_t ;
struct TYPE_4__ {scalar_t__ dts_laststatus; scalar_t__ dts_alive; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_5__ {TYPE_1__* dta_state; } ;


 scalar_t__ INT64_MAX ;
 TYPE_3__ dtrace_anon ;
 scalar_t__ dtrace_deadman_user ;
 scalar_t__ dtrace_gethrtime () ;
 int dtrace_membar_producer () ;
 int dtrace_sync () ;

__attribute__((used)) static void
dtrace_state_deadman(dtrace_state_t *state)
{
 hrtime_t now;

 dtrace_sync();

 now = dtrace_gethrtime();

 if (state != dtrace_anon.dta_state &&
     now - state->dts_laststatus >= dtrace_deadman_user)
  return;
 state->dts_alive = INT64_MAX;
 dtrace_membar_producer();
 state->dts_alive = now;
}
