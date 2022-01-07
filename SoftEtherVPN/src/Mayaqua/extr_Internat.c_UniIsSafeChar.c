
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (scalar_t__*) ;

bool UniIsSafeChar(wchar_t c)
{
 UINT i, len;
 wchar_t *check_str =
  L"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  L"abcdefghijklmnopqrstuvwxyz"
  L"0123456789"
  L" ()-_#%&.";

 len = UniStrLen(check_str);
 for (i = 0;i < len;i++)
 {
  if (c == check_str[i])
  {
   return 1;
  }
 }
 return 0;
}
