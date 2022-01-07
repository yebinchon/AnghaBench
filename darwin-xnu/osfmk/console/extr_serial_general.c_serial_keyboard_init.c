
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int MAXPRI_KERNEL ;
 int SERIALMODE_INPUT ;
 scalar_t__ kernel_thread_start_priority (int ,int *,int ,int *) ;
 int kprintf (char*) ;
 int panic (char*) ;
 scalar_t__ serial_keyboard_start ;
 int serialmode ;
 int thread_deallocate (int ) ;

void
serial_keyboard_init(void)
{
 kern_return_t result;
 thread_t thread;

 if(!(serialmode & SERIALMODE_INPUT))
  return;

 kprintf("Serial keyboard started\n");
 result = kernel_thread_start_priority((thread_continue_t)serial_keyboard_start, ((void*)0), MAXPRI_KERNEL, &thread);
 if (result != KERN_SUCCESS)
  panic("serial_keyboard_init");

 thread_deallocate(thread);
}
