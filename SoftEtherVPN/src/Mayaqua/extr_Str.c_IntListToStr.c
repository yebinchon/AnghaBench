
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int ClearStr (char*,int) ;
 scalar_t__ IsEmptyStr (char*) ;
 int* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 int MAX_SIZE ;
 int StrCat (char*,int,char*) ;
 int ToStr (char*,int) ;

void IntListToStr(char *str, UINT str_size, LIST *o, char *separate_str)
{
 UINT i;
 ClearStr(str, str_size);

 if (o == ((void*)0))
 {
  return;
 }
 if (IsEmptyStr(separate_str))
 {
  separate_str = ", ";
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  char tmp[MAX_SIZE];
  UINT *v = LIST_DATA(o, i);

  ToStr(tmp, *v);

  StrCat(str, str_size, tmp);

  if (i != (LIST_NUM(o) - 1))
  {
   StrCat(str, str_size, separate_str);
  }
 }
}
