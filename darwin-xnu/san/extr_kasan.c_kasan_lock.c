
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int current_thread () ;
 int kasan_lock_holder ;
 int kasan_vm_lock ;
 int ml_set_interrupts_enabled (int) ;
 int simple_lock (int *) ;

void
kasan_lock(boolean_t *b)
{
 *b = ml_set_interrupts_enabled(0);
 simple_lock(&kasan_vm_lock);
 kasan_lock_holder = current_thread();
}
