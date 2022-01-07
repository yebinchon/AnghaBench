
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int * pmIPIHandler; int (* pmCPUStateInit ) () ;} ;
typedef TYPE_1__ pmDispatch_t ;
struct TYPE_7__ {int DisableApicTimer; int InterruptStats; int IsInterrupting; int InterruptPending; int pmSendIPI; int * topoParms; int timerQueueMigrate; int RTCClockAdjust; int ThreadGetUrgency; int GetNanotimeInfo; int GetSavedRunCount; int ThreadBind; int LCPUtoProcessor; int GetHibernate; int LockCPUTopology; int GetPkgRoot; int GetMyPackage; int GetMyDie; int GetMyCore; int GetMyLCPU; int GetPackage; int GetDie; int GetCore; int GetLCPU; int initComplete; int resyncDeadlines; int setRTCPop; } ;
typedef TYPE_2__ pmCallBacks_t ;
typedef int i386_intr_func_t ;


 scalar_t__ FALSE ;
 scalar_t__ PM_DISPATCH_VERSION ;
 scalar_t__ earlyTopology ;
 int lapic_disable_timer ;
 int lapic_interrupt_counts ;
 int lapic_is_interrupt_pending ;
 int lapic_is_interrupting ;
 int lapic_set_pm_func (int ) ;
 int panic (char*,...) ;
 int pmCPUGetHibernate ;
 TYPE_1__* pmDispatch ;
 int pmGetCore ;
 int pmGetDie ;
 int pmGetLogicalCPU ;
 int pmGetMyCore ;
 int pmGetMyDie ;
 int pmGetMyLogicalCPU ;
 int pmGetMyPackage ;
 int pmGetNanotimeInfo ;
 int pmGetPackage ;
 int pmGetPkgRoot ;
 int pmGetSavedRunCount ;
 int pmInitComplete ;
 int pmLCPUtoProcessor ;
 int pmLockCPUTopology ;
 int pmReSyncDeadlines ;
 int pmSendIPI ;
 int pmThreadGetUrgency ;
 int pmTimerQueueMigrate ;
 int rtc_clock_adjust ;
 int setPop ;
 int stub1 () ;
 int thread_bind ;
 int topoParms ;

void
pmKextRegister(uint32_t version, pmDispatch_t *cpuFuncs,
    pmCallBacks_t *callbacks)
{
 if (callbacks != ((void*)0) && version == PM_DISPATCH_VERSION) {
  callbacks->setRTCPop = setPop;
  callbacks->resyncDeadlines = pmReSyncDeadlines;
  callbacks->initComplete = pmInitComplete;
  callbacks->GetLCPU = pmGetLogicalCPU;
  callbacks->GetCore = pmGetCore;
  callbacks->GetDie = pmGetDie;
  callbacks->GetPackage = pmGetPackage;
  callbacks->GetMyLCPU = pmGetMyLogicalCPU;
  callbacks->GetMyCore = pmGetMyCore;
  callbacks->GetMyDie = pmGetMyDie;
  callbacks->GetMyPackage = pmGetMyPackage;
  callbacks->GetPkgRoot = pmGetPkgRoot;
  callbacks->LockCPUTopology = pmLockCPUTopology;
  callbacks->GetHibernate = pmCPUGetHibernate;
  callbacks->LCPUtoProcessor = pmLCPUtoProcessor;
  callbacks->ThreadBind = thread_bind;
  callbacks->GetSavedRunCount = pmGetSavedRunCount;
  callbacks->GetNanotimeInfo = pmGetNanotimeInfo;
  callbacks->ThreadGetUrgency = pmThreadGetUrgency;
  callbacks->RTCClockAdjust = rtc_clock_adjust;
  callbacks->timerQueueMigrate = pmTimerQueueMigrate;
  callbacks->topoParms = &topoParms;
  callbacks->pmSendIPI = pmSendIPI;
  callbacks->InterruptPending = lapic_is_interrupt_pending;
  callbacks->IsInterrupting = lapic_is_interrupting;
  callbacks->InterruptStats = lapic_interrupt_counts;
  callbacks->DisableApicTimer = lapic_disable_timer;
 } else {
  panic("Version mis-match between Kernel and CPU PM");
 }

 if (cpuFuncs != ((void*)0)) {
  if (pmDispatch) {
   panic("Attempt to re-register power management interface--AICPM present in xcpm mode? %p->%p", pmDispatch, cpuFuncs);
  }

  pmDispatch = cpuFuncs;

  if (earlyTopology
      && pmDispatch->pmCPUStateInit != ((void*)0)) {
   (*pmDispatch->pmCPUStateInit)();
   earlyTopology = FALSE;
  }

  if (pmDispatch->pmIPIHandler != ((void*)0)) {
   lapic_set_pm_func((i386_intr_func_t)pmDispatch->pmIPIHandler);
  }
 }
}
