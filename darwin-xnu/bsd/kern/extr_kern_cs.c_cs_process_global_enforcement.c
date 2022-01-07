
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cs_process_enforcement_enable ;

int
cs_process_global_enforcement(void)
{
 return cs_process_enforcement_enable ? 1 : 0;
}
