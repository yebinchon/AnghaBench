
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 scalar_t__ MONITOR_break_brk ;
 scalar_t__ TRUE ;
 scalar_t__ Util_stricmp (char*,char*) ;
 char* get_token () ;
 int printf (char*,...) ;

__attribute__((used)) static void monitor_break_BRK(void)
{
 char *t = get_token();
 if (t == ((void*)0))
  printf("Break on BRK is %sabled\n", MONITOR_break_brk ? "en" : "dis");
 else if (Util_stricmp(t, "ON") == 0)
  MONITOR_break_brk = TRUE;
 else if (Util_stricmp(t, "OFF") == 0)
  MONITOR_break_brk = FALSE;
 else
  printf("Invalid argument. Usage: BBRK ON or OFF\n");
}
