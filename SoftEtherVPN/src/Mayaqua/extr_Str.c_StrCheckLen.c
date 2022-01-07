
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int KS_INC (int ) ;
 int KS_STRCHECK_COUNT ;

bool StrCheckLen(char *str, UINT len)
{
 UINT count = 0;
 UINT i;

 if (str == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_STRCHECK_COUNT);

 for (i = 0;;i++)
 {
  if (str[i] == '\0')
  {
   return 1;
  }
  count++;
  if (count > len)
  {
   return 0;
  }
 }
}
