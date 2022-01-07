
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int CfgSaveExW2 (int *,int *,int *,int *) ;

bool CfgSaveExW(CFG_RW *rw, FOLDER *f, wchar_t *name)
{
 return CfgSaveExW2(rw, f, name, ((void*)0));
}
