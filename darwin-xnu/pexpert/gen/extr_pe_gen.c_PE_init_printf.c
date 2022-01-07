
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int PE_putc ;
 int cnputc ;
 int vcattach () ;

void PE_init_printf(boolean_t vm_initialized)
{
  if (!vm_initialized) {
    PE_putc = cnputc;
  } else {
    vcattach();
  }
}
