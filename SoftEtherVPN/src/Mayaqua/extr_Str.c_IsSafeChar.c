
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;

bool IsSafeChar(char c)
{
 UINT i, len;
 char *check_str =
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  "abcdefghijklmnopqrstuvwxyz"
  "0123456789"
  " ()-_#%&.";

 len = StrLen(check_str);
 for (i = 0;i < len;i++)
 {
  if (c == check_str[i])
  {
   return 1;
  }
 }
 return 0;
}
