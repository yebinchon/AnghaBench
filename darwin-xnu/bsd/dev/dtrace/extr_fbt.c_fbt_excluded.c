
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int CRITICAL_BLACKLIST_COUNT ;
 int FALSE ;
 scalar_t__ LIT_STRNEQL (char const*,char*) ;
 scalar_t__ LIT_STRNSTART (char const*,char*) ;
 int PROBE_CTX_CLOSURE_COUNT ;
 int TRUE ;
 int _cmp ;
 int * bsearch (char const*,int ,int ,int,int ) ;
 int critical_blacklist ;
 scalar_t__ ignore_fbt_blacklist ;
 int probe_ctx_closure ;
 int * strstr (char const*,char*) ;

int
fbt_excluded(const char* name)
{



 if (ignore_fbt_blacklist)
  return FALSE;

 if (LIT_STRNSTART(name, "dtrace_") && !LIT_STRNSTART(name, "dtrace_safe_")) {






  return TRUE;
 }




 if (bsearch( name, critical_blacklist, CRITICAL_BLACKLIST_COUNT, sizeof(name), _cmp ) != ((void*)0))
  return TRUE;




 if (bsearch( name, probe_ctx_closure, PROBE_CTX_CLOSURE_COUNT, sizeof(name), _cmp ) != ((void*)0)) {
  return TRUE;
 }






 if (LIT_STRNSTART(name, "cpu_") ||
  LIT_STRNSTART(name, "platform_") ||
  LIT_STRNSTART(name, "machine_") ||
  LIT_STRNSTART(name, "ml_") ||
  LIT_STRNSTART(name, "PE_") ||
  LIT_STRNSTART(name, "rtc_") ||
  LIT_STRNSTART(name, "_rtc_") ||
  LIT_STRNSTART(name, "rtclock_") ||
  LIT_STRNSTART(name, "clock_") ||
  LIT_STRNSTART(name, "bcopy") ||
  LIT_STRNSTART(name, "pmap_") ||
  LIT_STRNSTART(name, "hw_") ||
  LIT_STRNSTART(name, "lapic_") ||
  LIT_STRNSTART(name, "OSAdd") ||
  LIT_STRNSTART(name, "OSBit") ||
  LIT_STRNSTART(name, "OSDecrement") ||
  LIT_STRNSTART(name, "OSIncrement") ||
  LIT_STRNSTART(name, "OSCompareAndSwap") ||
  LIT_STRNSTART(name, "etimer_") ||
  LIT_STRNSTART(name, "dtxnu_kern_") ||
  LIT_STRNSTART(name, "flush_mmu_tlb_"))
  return TRUE;




 if (LIT_STRNSTART(name, "fasttrap_") ||
  LIT_STRNSTART(name, "fuword") ||
  LIT_STRNSTART(name, "suword"))
  return TRUE;

 if (LIT_STRNSTART(name, "_dtrace"))
  return TRUE;

 if (LIT_STRNSTART(name, "hibernate_"))
  return TRUE;
 if (LIT_STRNSTART(name, "machine_") ||
  LIT_STRNSTART(name, "idt64") ||
  LIT_STRNSTART(name, "ks_") ||
  LIT_STRNSTART(name, "hndl_") ||
  LIT_STRNSTART(name, "_intr_") ||
  LIT_STRNSTART(name, "mapping_") ||
  LIT_STRNSTART(name, "tsc_") ||
  LIT_STRNSTART(name, "pmCPU") ||
  LIT_STRNSTART(name, "pms") ||
  LIT_STRNSTART(name, "usimple_") ||
  LIT_STRNSTART(name, "lck_spin_lock") ||
  LIT_STRNSTART(name, "lck_spin_unlock") ||
  LIT_STRNSTART(name, "absolutetime_to_") ||
  LIT_STRNSTART(name, "commpage_") ||
  LIT_STRNSTART(name, "ml_") ||
  LIT_STRNSTART(name, "PE_") ||
  LIT_STRNSTART(name, "act_machine") ||
  LIT_STRNSTART(name, "acpi_") ||
  LIT_STRNSTART(name, "pal_")) {
  return TRUE;
 }

 if (LIT_STRNSTART(name, "dsmos_"))
  return TRUE;






 if (LIT_STRNSTART(name, "kdp_") ||
  LIT_STRNSTART(name, "kdb_") ||
  LIT_STRNSTART(name, "debug_")) {
  return TRUE;
 }
 if (((void*)0) != strstr(name, "panic_"))
  return TRUE;

 return FALSE;
}
