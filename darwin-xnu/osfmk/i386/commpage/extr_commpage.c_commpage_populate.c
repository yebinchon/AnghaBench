
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int INTEL_PGBYTES ;
 int VM_PROT_READ ;
 int _COMM_PAGE32_AREA_USED ;
 int _COMM_PAGE32_BASE_ADDRESS ;
 int _COMM_PAGE32_START_ADDRESS ;
 int _COMM_PAGE64_AREA_USED ;
 int _COMM_PAGE64_BASE_ADDRESS ;
 int _cpu_capabilities ;
 int atm_get_diagnostic_config () ;
 scalar_t__ commPagePtr32 ;
 scalar_t__ commPagePtr64 ;
 int commpage32_map ;
 int commpage64_map ;
 int commpage_active_cpus_lock ;
 int commpage_boottime_init () ;
 int commpage_init_cpu_capabilities () ;
 int commpage_mach_approximate_time_init () ;
 int commpage_mach_continuous_time_init () ;
 int commpage_populate_one (int ,scalar_t__*,int,int ,int *,int *,char*,int ) ;
 int commpage_update_active_cpus () ;
 int commpage_update_atm_diagnostic_config (int ) ;
 int commpage_update_kdebug_state () ;
 int gtod_time_data32 ;
 int gtod_time_data64 ;
 int k64Bit ;
 int pmap_commpage32_init (int ,int ,int) ;
 int pmap_commpage64_init (int ,int ,int) ;
 int rtc_nanotime_init_commpage () ;
 int simple_lock_init (int *,int ) ;
 int time_data32 ;
 int time_data64 ;

void
commpage_populate( void )
{
 commpage_init_cpu_capabilities();

 commpage_populate_one( commpage32_map,
    &commPagePtr32,
    _COMM_PAGE32_AREA_USED,
    _COMM_PAGE32_BASE_ADDRESS,
    &time_data32,
    &gtod_time_data32,
    "commpage 32-bit",
    VM_PROT_READ);




 time_data64 = time_data32;
 gtod_time_data64 = gtod_time_data32;

 if (_cpu_capabilities & k64Bit) {
  commpage_populate_one( commpage64_map,
     &commPagePtr64,
     _COMM_PAGE64_AREA_USED,
     _COMM_PAGE32_START_ADDRESS,
     &time_data64,
     &gtod_time_data64,
     "commpage 64-bit",
     VM_PROT_READ);




 }

 simple_lock_init(&commpage_active_cpus_lock, 0);

 commpage_update_active_cpus();
 commpage_mach_approximate_time_init();
 commpage_mach_continuous_time_init();
 commpage_boottime_init();
 rtc_nanotime_init_commpage();
 commpage_update_kdebug_state();



}
