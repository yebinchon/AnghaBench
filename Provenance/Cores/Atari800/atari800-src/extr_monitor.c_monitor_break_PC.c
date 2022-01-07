
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MONITOR_break_addr ;
 int get_hex (int*) ;
 int printf (char*,...) ;

__attribute__((used)) static void monitor_break_PC(void)
{
 int addr_valid = get_hex(&MONITOR_break_addr);
 if (addr_valid)
 {
  if (MONITOR_break_addr >= 0xd000 && MONITOR_break_addr <= 0xd7ff)
   printf("PC breakpoint disabled\n");
  else
   printf("Breakpoint set at PC=%04X\n", MONITOR_break_addr);
 }
 else
 {
  printf("Breakpoint is at PC=%04X\n", MONITOR_break_addr);
 }
}
