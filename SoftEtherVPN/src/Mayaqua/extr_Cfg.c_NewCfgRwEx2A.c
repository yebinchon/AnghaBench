
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int * NewCfgRwEx2W (int **,int *,int,int *) ;

CFG_RW *NewCfgRwEx2A(FOLDER **root, char *cfg_name_a, bool dont_backup, char *template_name_a)
{
 CFG_RW *ret;
 wchar_t *cfg_name_w = CopyStrToUni(cfg_name_a);
 wchar_t *template_name_w = CopyStrToUni(template_name_a);

 ret = NewCfgRwEx2W(root, cfg_name_w, dont_backup, template_name_w);

 Free(cfg_name_w);
 Free(template_name_w);

 return ret;
}
