
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int temp_bootarg_panic_trace ;
typedef int DTEntry ;


 scalar_t__ DTFindEntry (char*,char*,int *) ;
 scalar_t__ DTGetProperty (int ,char*,void**,int *) ;
 int PE_arm_debug_enable_trace () ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 unsigned int bootarg_panic_trace ;
 int cpu_halt ;
 int enable_alt_trace ;
 int enable_trace ;
 scalar_t__ gSocPhys ;
 scalar_t__ kSuccess ;
 int kprintf (char*,...) ;
 int ml_init_arm_debug_interface (void*,int ) ;
 int ml_io_map (scalar_t__,uintptr_t) ;
 int panic_trace_lock ;
 int pe_init_debug_command (int ,int *,char*) ;
 int simple_lock_init (int *,int ) ;
 int trace_halt ;

void
pe_arm_init_debug(void *args)
{
 DTEntry entryP;
 uintptr_t *reg_prop;
 uint32_t prop_size;

 if (gSocPhys == 0 ) {
  kprintf("pe_arm_init_debug: failed to initialize gSocPhys == 0\n");
     return;
 }

 if ( DTFindEntry("device_type", "cpu-debug-interface", &entryP) == kSuccess ) {
  if (args != ((void*)0)) {
   if (DTGetProperty(entryP, "reg", (void **)&reg_prop, &prop_size) == kSuccess) {
    ml_init_arm_debug_interface(args, ml_io_map(gSocPhys + *reg_prop, *(reg_prop + 1)));
   }
  }
 } else {
  kprintf("pe_arm_init_debug: failed to find cpu-debug-interface\n");
 }
}
