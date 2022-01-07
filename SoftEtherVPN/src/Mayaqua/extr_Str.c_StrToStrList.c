
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 int Add (int *,char*) ;
 int * NewListFast (int *) ;
 int StrCpy (char*,scalar_t__,char*) ;
 scalar_t__ StrLen (char*) ;
 scalar_t__ StrSize (char*) ;
 char* ZeroMalloc (scalar_t__) ;

LIST *StrToStrList(char *str, UINT size)
{
 LIST *o;
 char *tmp;
 UINT tmp_size;
 UINT i;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 o = NewListFast(((void*)0));

 i = 0;
 while (1)
 {
  if (i >= size)
  {
   break;
  }
  if (*str == 0)
  {
   break;
  }

  tmp_size = StrSize(str);
  tmp = ZeroMalloc(tmp_size);
  StrCpy(tmp, tmp_size, str);
  Add(o, tmp);
  str += StrLen(str) + 1;
  i++;
 }

 return o;
}
