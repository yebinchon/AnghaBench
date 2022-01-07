
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 char* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ StrCmpi (char*,char*) ;

bool IsInListStr(LIST *o, char *str)
{
 UINT i;

 if (o == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  char *s = LIST_DATA(o, i);

  if (StrCmpi(s, str) == 0)
  {
   return 1;
  }
 }

 return 0;
}
