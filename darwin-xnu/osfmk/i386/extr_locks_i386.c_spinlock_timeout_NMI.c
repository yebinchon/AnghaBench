
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ cpu_active_thread; } ;


 int NMIPI_panic (int ,int ) ;
 int SPINLOCK_TIMEOUT ;
 TYPE_1__** cpu_data_ptr ;
 scalar_t__ cpu_number () ;
 int cpu_to_cpumask (size_t) ;
 size_t real_ncpus ;
 size_t spinlock_owner_cpu ;

uint32_t spinlock_timeout_NMI(uintptr_t thread_addr) {
 uint32_t i;

 for (i = 0; i < real_ncpus; i++) {
  if ((cpu_data_ptr[i] != ((void*)0)) && ((uintptr_t)cpu_data_ptr[i]->cpu_active_thread == thread_addr)) {
   spinlock_owner_cpu = i;
   if ((uint32_t) cpu_number() != i) {

    NMIPI_panic(cpu_to_cpumask(i), SPINLOCK_TIMEOUT);
   }
   break;
  }
 }

 return spinlock_owner_cpu;
}
