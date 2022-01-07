
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_config () ;
 int cpu_data_realloc () ;
 int cpuid_cpu_display (char*) ;
 int cpuid_extfeature_display (char*) ;
 int cpuid_feature_display (char*) ;
 int debug_log_init () ;
 int efi_init () ;
 int init_fpu () ;
 int mtrr_init () ;
 int pat_init () ;
 int pmap_lowmem_finalize () ;
 int smp_init () ;

void
machine_init(void)
{

 cpu_data_realloc();


        debug_log_init();




 cpuid_cpu_display("CPU identification");
 cpuid_feature_display("CPU features");
 cpuid_extfeature_display("CPU extended features");




        efi_init();

 smp_init();




 init_fpu();




 clock_config();
 pmap_lowmem_finalize();
}
