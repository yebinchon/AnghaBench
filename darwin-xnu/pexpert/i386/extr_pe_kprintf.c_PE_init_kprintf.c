
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boot_arg ;
typedef int boolean_t ;
struct TYPE_2__ {unsigned int initialized; } ;


 unsigned int DB_KPRT ;
 unsigned int FALSE ;
 int PE_kputc ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 TYPE_1__ PE_state ;
 unsigned int TRUE ;
 int cnputc ;
 unsigned int disable_serial_output ;
 int kprintf_lock ;
 scalar_t__ pal_serial_init () ;
 int pal_serial_putc ;
 int panic (char*) ;
 int simple_lock_init (int *,int ) ;

void PE_init_kprintf(boolean_t vm_initialized)
{
 unsigned int boot_arg;

 if (PE_state.initialized == FALSE)
  panic("Platform Expert not initialized");

 if (!vm_initialized) {
  unsigned int new_disable_serial_output = TRUE;

  simple_lock_init(&kprintf_lock, 0);

  if (PE_parse_boot_argn("debug", &boot_arg, sizeof (boot_arg)))
   if (boot_arg & DB_KPRT)
    new_disable_serial_output = FALSE;




  if (!new_disable_serial_output && (!disable_serial_output || pal_serial_init()))
   PE_kputc = pal_serial_putc;
  else
   PE_kputc = cnputc;

  disable_serial_output = new_disable_serial_output;
 }
}
