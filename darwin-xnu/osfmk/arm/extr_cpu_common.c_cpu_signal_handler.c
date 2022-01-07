
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int cpu_signal_handler_internal (int ) ;

void
cpu_signal_handler(void)
{
 cpu_signal_handler_internal(FALSE);
}
