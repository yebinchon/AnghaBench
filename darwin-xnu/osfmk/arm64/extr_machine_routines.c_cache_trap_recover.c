
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;


 int cache_trap_error (int ,int ) ;
 int current_thread () ;

__attribute__((used)) static void
cache_trap_recover()
{
 vm_map_address_t fault_addr;

 __asm__ volatile("mrs %0, FAR_EL1" : "=r"(fault_addr));

 cache_trap_error(current_thread(), fault_addr);
}
