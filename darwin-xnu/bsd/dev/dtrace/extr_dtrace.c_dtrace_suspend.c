
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtps_suspend ;
 int dtrace_pops_t ;
 int dtrace_probe_foreach (int ) ;
 int offsetof (int ,int ) ;

void
dtrace_suspend(void)
{
 dtrace_probe_foreach(offsetof(dtrace_pops_t, dtps_suspend));
}
