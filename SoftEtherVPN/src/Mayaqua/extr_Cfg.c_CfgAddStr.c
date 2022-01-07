
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;
typedef int ITEM ;
typedef int FOLDER ;


 scalar_t__ CalcStrToUni (char*) ;
 int * CfgAddUniStr (int *,char*,int *) ;
 int Free (int *) ;
 int * Malloc (scalar_t__) ;
 int StrToUni (int *,scalar_t__,char*) ;

ITEM *CfgAddStr(FOLDER *f, char *name, char *str)
{
 wchar_t *tmp;
 UINT tmp_size;
 ITEM *t;

 if (f == ((void*)0) || name == ((void*)0) || str == ((void*)0))
 {
  return ((void*)0);
 }


 tmp_size = CalcStrToUni(str);
 if (tmp_size == 0)
 {
  return ((void*)0);
 }
 tmp = Malloc(tmp_size);
 StrToUni(tmp, tmp_size, str);
 t = CfgAddUniStr(f, name, tmp);
 Free(tmp);

 return t;
}
