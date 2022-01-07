
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int THREAD_NULL ;
 int kasan_lock_holder ;
 int kasan_vm_lock ;
 int ml_set_interrupts_enabled (int ) ;
 int simple_unlock (int *) ;

void
kasan_unlock(boolean_t b)
{
 kasan_lock_holder = THREAD_NULL;
 simple_unlock(&kasan_vm_lock);
 ml_set_interrupts_enabled(b);
}
