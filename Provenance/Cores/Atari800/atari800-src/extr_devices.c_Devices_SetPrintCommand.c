
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_print_command ;
 int FALSE ;
 int TRUE ;
 int strcpy (int ,char const*) ;

int Devices_SetPrintCommand(const char *command)
{
 const char *p = command;
 int was_percent_s = FALSE;
 while (*p != '\0') {
  if (*p++ == '%') {
   char c = *p++;
   if (c == '%')
    continue;
   if (c == 's' && !was_percent_s) {
    was_percent_s = TRUE;
    continue;
   }
   return FALSE;
  }
 }
 strcpy(Devices_print_command, command);
 return TRUE;
}
