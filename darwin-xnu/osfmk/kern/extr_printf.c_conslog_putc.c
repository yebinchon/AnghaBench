
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnputc (char) ;
 int disableConsoleOutput ;
 int kernel_debugger_entry_count ;
 int log_putc (char) ;

void
conslog_putc(
 char c)
{
 if (!disableConsoleOutput)
  cnputc(c);





}
