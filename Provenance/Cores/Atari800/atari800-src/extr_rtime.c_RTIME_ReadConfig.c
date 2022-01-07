
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int RTIME_enabled ;
 int TRUE ;
 int Util_sscanbool (char*) ;
 scalar_t__ strcmp (char*,char*) ;

int RTIME_ReadConfig(char *string, char *ptr)
{
 if (strcmp(string, "RTIME") == 0) {
  int value = Util_sscanbool(ptr);
  if (value < 0)
   return FALSE;
  RTIME_enabled = value;
 }
 else return FALSE;
 return TRUE;
}
