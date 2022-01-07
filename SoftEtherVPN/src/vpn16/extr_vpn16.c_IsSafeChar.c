
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 size_t strlen (char*) ;

BOOL IsSafeChar(char c)
{
 UINT i, len;
 char *check_str =
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  "abcdefghijklmnopqrstuvwxyz"
  "0123456789"
  " ()-_#%&.";

 len = strlen(check_str);
 for (i = 0;i < len;i++)
 {
  if (c == check_str[i])
  {
   return TRUE;
  }
 }
 return FALSE;
}
