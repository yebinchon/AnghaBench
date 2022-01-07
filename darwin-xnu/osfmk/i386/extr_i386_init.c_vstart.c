
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
struct TYPE_10__ {int kaddr; int ksize; int PhysicalMemorySize; int MemoryMapSize; int MemoryMap; int CommandLine; int Version; int Revision; } ;
typedef TYPE_1__ boot_args ;
typedef int boolean_t ;
struct TYPE_11__ {int cpu_int_stack_top; } ;


 int DBG (char*,...) ;
 int FALSE ;
 int ID ;
 scalar_t__ ID_MAP_VTOP (void*) ;
 void* IdlePML4 ;
 int Idle_PTs_init () ;
 size_t LAPIC_ID_MASK ;
 size_t LAPIC_ID_SHIFT ;
 size_t LAPIC_READ (int ) ;
 int MSR_IA32_GS_BASE ;
 int PAGE_SIZE ;
 int PE_INIT_PLATFORM_D ;
 int PE_init_platform (int ,TYPE_1__*) ;
 int TRUE ;
 int VSTART_CPU_DESC_INIT ;
 int VSTART_CPU_MODE_INIT ;
 int VSTART_ENTRY ;
 int VSTART_EXIT ;
 int VSTART_IDLE_PTS_INIT ;
 int VSTART_IDT_INIT ;
 int cpu_data_alloc (int ) ;
 TYPE_5__* cpu_datap (int) ;
 int cpu_desc_init (TYPE_5__*) ;
 int cpu_desc_load (TYPE_5__*) ;
 int cpu_syscall_init (TYPE_5__*) ;
 scalar_t__ first_avail ;
 scalar_t__ i386_init ;
 scalar_t__ i386_init_slave ;
 int kasan_init () ;
 int kasan_notify_stolen (uintptr_t) ;
 int kasan_reserve_memory (TYPE_1__*) ;
 TYPE_1__* kernelBootArgs ;
 int* lapic_to_cpu ;
 scalar_t__ ml_static_ptovirt (scalar_t__) ;
 int mt_early_init () ;
 int pal_serial_init () ;
 void* physfree ;
 int postcode (int ) ;
 TYPE_1__* rdmsr64 (int ) ;
 int set_cr3_raw (uintptr_t) ;
 int vstart_idt_init () ;
 int x86_init_wrapper (uintptr_t,int ) ;

__attribute__((noreturn))
void
vstart(vm_offset_t boot_args_start)
{
 boolean_t is_boot_cpu = !(boot_args_start == 0);
 int cpu = 0;
 uint32_t lphysfree;

 postcode(VSTART_ENTRY);

 if (is_boot_cpu) {



  vstart_idt_init();
  postcode(VSTART_IDT_INIT);




  kernelBootArgs = (boot_args *)boot_args_start;
  lphysfree = kernelBootArgs->kaddr + kernelBootArgs->ksize;
  physfree = (void *)(uintptr_t)((lphysfree + PAGE_SIZE - 1) &~ (PAGE_SIZE - 1));




  DBG("revision      0x%x\n", kernelBootArgs->Revision);
  DBG("version       0x%x\n", kernelBootArgs->Version);
  DBG("command line  %s\n", kernelBootArgs->CommandLine);
  DBG("memory map    0x%x\n", kernelBootArgs->MemoryMap);
  DBG("memory map sz 0x%x\n", kernelBootArgs->MemoryMapSize);
  DBG("kaddr         0x%x\n", kernelBootArgs->kaddr);
  DBG("ksize         0x%x\n", kernelBootArgs->ksize);
  DBG("physfree      %p\n", physfree);
  DBG("bootargs: %p, &ksize: %p &kaddr: %p\n",
   kernelBootArgs,
   &kernelBootArgs->ksize,
   &kernelBootArgs->kaddr);
  DBG("SMBIOS mem sz 0x%llx\n", kernelBootArgs->PhysicalMemorySize);







  kernelBootArgs = (boot_args *)
      ml_static_ptovirt(boot_args_start);
  DBG("i386_init(0x%lx) kernelBootArgs=%p\n",
      (unsigned long)boot_args_start, kernelBootArgs);





  PE_init_platform(FALSE, kernelBootArgs);
  postcode(PE_INIT_PLATFORM_D);

  Idle_PTs_init();
  postcode(VSTART_IDLE_PTS_INIT);
  first_avail = (vm_offset_t)ID_MAP_VTOP(physfree);

  cpu_data_alloc(TRUE);

  cpu_desc_init(cpu_datap(0));
  postcode(VSTART_CPU_DESC_INIT);
  cpu_desc_load(cpu_datap(0));

  postcode(VSTART_CPU_MODE_INIT);
  cpu_syscall_init(cpu_datap(0));



 } else {

  set_cr3_raw((uintptr_t)ID_MAP_VTOP(IdlePML4));

  cpu = lapic_to_cpu[(LAPIC_READ(ID)>>LAPIC_ID_SHIFT) & LAPIC_ID_MASK];
  DBG("CPU: %d, GSBASE initial value: 0x%llx\n", cpu, rdmsr64(MSR_IA32_GS_BASE));
  cpu_desc_load(cpu_datap(cpu));
 }

 postcode(VSTART_EXIT);
 x86_init_wrapper(is_boot_cpu ? (uintptr_t) i386_init
         : (uintptr_t) i386_init_slave,
    cpu_datap(cpu)->cpu_int_stack_top);
}
