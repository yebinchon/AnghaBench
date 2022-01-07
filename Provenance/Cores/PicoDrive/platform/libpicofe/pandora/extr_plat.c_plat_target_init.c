
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scan_for_filters () ;

int plat_target_init(void)
{
 scan_for_filters();

 return 0;
}
