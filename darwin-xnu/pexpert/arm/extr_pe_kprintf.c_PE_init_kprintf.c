
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boot_arg ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ initialized; } ;


 unsigned int DB_KPRT ;
 scalar_t__ FALSE ;
 int PE_kputc ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 TYPE_1__ PE_state ;
 int cnputc ;
 scalar_t__ disable_serial_output ;
 int kprintf_lock ;
 int panic (char*) ;
 scalar_t__ serial_init () ;
 int serial_putc ;
 int simple_lock_init (int *,int ) ;

void
PE_init_kprintf(boolean_t vm_initialized)
{
 unsigned int boot_arg;

 if (PE_state.initialized == FALSE)
  panic("Platform Expert not initialized");

 if (!vm_initialized) {
  simple_lock_init(&kprintf_lock, 0);

  if (PE_parse_boot_argn("debug", &boot_arg, sizeof (boot_arg)))
   if (boot_arg & DB_KPRT)
    disable_serial_output = FALSE;

  if (serial_init())
   PE_kputc = serial_putc;
  else
   PE_kputc = cnputc;
 }
}
