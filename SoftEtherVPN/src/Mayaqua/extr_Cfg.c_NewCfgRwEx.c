
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int * NewCfgRwExW (int **,int *,int) ;

CFG_RW *NewCfgRwEx(FOLDER **root, char *cfg_name, bool dont_backup)
{
 wchar_t *cfg_name_w = CopyStrToUni(cfg_name);
 CFG_RW *ret = NewCfgRwExW(root, cfg_name_w, dont_backup);

 Free(cfg_name_w);

 return ret;
}
