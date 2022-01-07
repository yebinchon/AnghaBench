
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _cpu_capabilities ;
 scalar_t__ _get_cpu_capabilities () ;

void
_init_cpu_capabilities( void )
{
 _cpu_capabilities = (int)_get_cpu_capabilities();
}
