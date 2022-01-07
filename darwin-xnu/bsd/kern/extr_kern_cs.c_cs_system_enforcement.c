
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cs_system_enforcement_enable ;

int
cs_system_enforcement(void)
{
 return cs_system_enforcement_enable ? 1 : 0;
}
