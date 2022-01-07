
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ IsSafeChar (char) ;
 scalar_t__ TRUE ;
 size_t strlen (char*) ;

BOOL IsSafeStr(char *str)
{
 UINT i, len;
 if (str == ((void*)0))
 {
  return FALSE;
 }

 len = strlen(str);
 for (i = 0;i < len;i++)
 {
  if (IsSafeChar(str[i]) == FALSE)
  {
   return FALSE;
  }
 }
 if (str[0] == ' ')
 {
  return FALSE;
 }
 if (len != 0)
 {
  if (str[len - 1] == ' ')
  {
   return FALSE;
  }
 }
 return TRUE;
}
