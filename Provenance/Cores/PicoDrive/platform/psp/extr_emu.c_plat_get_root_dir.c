
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int plat_get_root_dir(char *dst, int len)
{
 if (len > 0) *dst = 0;
 return 0;
}
