
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int halt_all_cpus (int ) ;

__attribute__((noreturn))
void
halt_cpu(void)
{
 halt_all_cpus(FALSE);
}
