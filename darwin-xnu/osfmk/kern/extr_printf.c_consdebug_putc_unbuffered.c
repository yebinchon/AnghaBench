
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PE_kputc (char) ;
 int cnputc_unbuffered (char) ;
 int console_is_serial () ;
 int debug_putc (char) ;
 int disableConsoleOutput ;
 int disable_serial_output ;

void
consdebug_putc_unbuffered(char c)
{
 if (!disableConsoleOutput)
  cnputc_unbuffered(c);

 debug_putc(c);

 if (!console_is_serial() && !disable_serial_output)
   PE_kputc(c);
}
