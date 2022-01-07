
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int CR0_CD ;
 int CR0_NW ;
 int DBG (char*,int ,int ) ;
 int FALSE ;
 void* FAST_SLAVE_INIT ;
 void* FULL_SLAVE_INIT ;
 int I386_INIT_SLAVE ;
 int LAPIC_CPU_MAP_DUMP () ;
 int LAPIC_DUMP () ;
 int LAPIC_INIT () ;
 int assert (int) ;
 int cpu_init () ;
 int cpu_syscall_init (int ) ;
 int cpu_thread_init () ;
 int current_cpu_datap () ;
 int get_cpu_number () ;
 int get_cpu_phys_number () ;
 int get_cr0 () ;
 int init_fpu () ;
 int lapic_configure () ;
 int mca_cpu_init () ;
 int ml_get_interrupts_enabled () ;
 int mtrr_update_cpu () ;
 int panic (char*) ;
 int pat_init () ;
 int pmap_cpu_init () ;
 int postcode (int ) ;
 int set_cr0 (int) ;
 int slave_main (void*) ;
 int ucode_update_wake () ;
 int vmx_resume (int ) ;

__attribute__((used)) static void
do_init_slave(boolean_t fast_restart)
{
 void *init_param = FULL_SLAVE_INIT;

 postcode(I386_INIT_SLAVE);

 if (!fast_restart) {

  set_cr0(get_cr0() & ~(CR0_NW|CR0_CD));

  DBG("i386_init_slave() CPU%d: phys (%d) active.\n",
      get_cpu_number(), get_cpu_phys_number());

  assert(!ml_get_interrupts_enabled());

  cpu_syscall_init(current_cpu_datap());
  pmap_cpu_init();





  LAPIC_INIT();
  lapic_configure();
  LAPIC_DUMP();
  LAPIC_CPU_MAP_DUMP();

  init_fpu();





  ucode_update_wake();
 } else
     init_param = FAST_SLAVE_INIT;
 cpu_thread_init();

 cpu_init();
  slave_main(init_param);

  panic("do_init_slave() returned from slave_main()");
}
