
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (scalar_t__*) ;

bool UniInChar(wchar_t *string, wchar_t c)
{
 UINT i, len;

 if (string == ((void*)0))
 {
  return 0;
 }

 len = UniStrLen(string);

 for (i = 0;i < len;i++)
 {
  if (string[i] == c)
  {
   return 1;
  }
 }

 return 0;
}
