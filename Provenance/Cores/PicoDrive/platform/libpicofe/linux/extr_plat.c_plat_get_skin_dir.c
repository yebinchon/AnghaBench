
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 int plat_get_data_dir (char*,int) ;

int plat_get_skin_dir(char *dst, int len)
{
 int ret = plat_get_data_dir(dst, len);
 if (ret < 0)
  return ret;

 memcpy(dst + ret, "skin/", sizeof "skin/");
 return ret + sizeof("skin/") - 1;
}
