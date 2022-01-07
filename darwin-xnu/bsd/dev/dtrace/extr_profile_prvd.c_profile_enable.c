
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ prof_interval; scalar_t__ prof_kind; scalar_t__ prof_cyclic; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int dtrace_id_t ;
typedef scalar_t__ cyclic_id_t ;
struct TYPE_9__ {scalar_t__ cyt_interval; scalar_t__ cyt_when; } ;
typedef TYPE_2__ cyc_time_t ;
struct TYPE_10__ {TYPE_1__* cyo_arg; int cyo_offline; int cyo_online; } ;
typedef TYPE_3__ cyc_omni_handler_t ;
struct TYPE_11__ {int cyh_level; TYPE_1__* cyh_arg; int cyh_func; } ;
typedef TYPE_4__ cyc_handler_t ;


 int ASSERT (int) ;
 int CY_HIGH_LEVEL ;
 int MUTEX_HELD (int *) ;
 scalar_t__ PROF_PROFILE ;
 scalar_t__ PROF_TICK ;
 int cpu_lock ;
 scalar_t__ cyclic_add_omni (TYPE_3__*) ;
 scalar_t__ cyclic_timer_add (TYPE_4__*,TYPE_2__*) ;
 scalar_t__ dtrace_gethrtime () ;
 int profile_offline ;
 int profile_online ;
 int profile_tick ;

__attribute__((used)) static int
profile_enable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 profile_probe_t *prof = parg;
 cyc_omni_handler_t omni;
 cyc_handler_t hdlr;
 cyc_time_t when;

 ASSERT(prof->prof_interval != 0);
 ASSERT(MUTEX_HELD(&cpu_lock));

 if (prof->prof_kind == PROF_TICK) {
  hdlr.cyh_func = profile_tick;
  hdlr.cyh_arg = prof;
  hdlr.cyh_level = CY_HIGH_LEVEL;

  when.cyt_interval = prof->prof_interval;

  when.cyt_when = dtrace_gethrtime() + when.cyt_interval;



 } else {
  ASSERT(prof->prof_kind == PROF_PROFILE);
  omni.cyo_online = profile_online;
  omni.cyo_offline = profile_offline;
  omni.cyo_arg = prof;
 }

 if (prof->prof_kind == PROF_TICK) {
  prof->prof_cyclic = cyclic_timer_add(&hdlr, &when);
 } else {
  prof->prof_cyclic = (cyclic_id_t)cyclic_add_omni(&omni);
 }

 return(0);
}
