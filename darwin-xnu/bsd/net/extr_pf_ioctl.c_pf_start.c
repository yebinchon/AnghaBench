
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running; int stateid; int since; } ;


 int DPFPRINTF (int ,char*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PF_DEBUG_MISC ;
 int VERIFY (int) ;
 int pf_calendar_time_second () ;
 int pf_is_enabled ;
 int pf_lock ;
 int pf_purge_thread_fn ;
 TYPE_1__ pf_status ;
 int pf_time_second () ;
 int wakeup (int ) ;

__attribute__((used)) static void
pf_start(void)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 VERIFY(pf_is_enabled == 0);

 pf_is_enabled = 1;
 pf_status.running = 1;
 pf_status.since = pf_calendar_time_second();
 if (pf_status.stateid == 0) {
  pf_status.stateid = pf_time_second();
  pf_status.stateid = pf_status.stateid << 32;
 }
 wakeup(pf_purge_thread_fn);
 DPFPRINTF(PF_DEBUG_MISC, ("pf: started\n"));
}
