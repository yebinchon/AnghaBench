
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cs_library_val_enable ;

int
cs_system_require_lv(void)
{
 return cs_library_val_enable ? 1 : 0;
}
