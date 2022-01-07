
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int CfgSaveExW (int *,int *,int *) ;
 int * CopyStrToUni (char*) ;
 int Free (int *) ;

bool CfgSaveEx(CFG_RW *rw, FOLDER *f, char *name)
{
 wchar_t *name_w = CopyStrToUni(name);
 bool ret = CfgSaveExW(rw, f, name_w);

 Free(name_w);

 return ret;
}
