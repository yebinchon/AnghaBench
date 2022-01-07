
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetModuleFileName (int *,char*,int) ;

int plat_get_root_dir(char *dst, int len)
{
 int ml;

 ml = GetModuleFileName(((void*)0), dst, len);
 while (ml > 0 && dst[ml] != '\\')
  ml--;
 if (ml != 0)
  ml++;

 dst[ml] = 0;
 return ml;
}
