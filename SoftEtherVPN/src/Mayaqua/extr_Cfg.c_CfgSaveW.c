
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;


 int CfgSaveExW (int *,int *,int *) ;

void CfgSaveW(FOLDER *f, wchar_t *name)
{
 CfgSaveExW(((void*)0), f, name);
}
