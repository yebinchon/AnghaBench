
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int * NewCfgRwEx2W (int **,int *,int,int *) ;

CFG_RW *NewCfgRwExW(FOLDER **root, wchar_t *cfg_name, bool dont_backup)
{
 return NewCfgRwEx2W(root, cfg_name, dont_backup, ((void*)0));
}
