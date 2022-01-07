
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int since; scalar_t__ running; } ;


 int DPFPRINTF (int ,char*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PF_DEBUG_MISC ;
 int VERIFY (scalar_t__) ;
 int pf_calendar_time_second () ;
 scalar_t__ pf_is_enabled ;
 int pf_lock ;
 int pf_purge_thread_fn ;
 TYPE_1__ pf_status ;
 int wakeup (int ) ;

__attribute__((used)) static void
pf_stop(void)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 VERIFY(pf_is_enabled);

 pf_status.running = 0;
 pf_is_enabled = 0;
 pf_status.since = pf_calendar_time_second();
 wakeup(pf_purge_thread_fn);
 DPFPRINTF(PF_DEBUG_MISC, ("pf: stopped\n"));
}
