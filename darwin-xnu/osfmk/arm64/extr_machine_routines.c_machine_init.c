
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int clock_config () ;
 scalar_t__ debug_enabled ;
 int debug_log_init () ;
 int is_clock_configured ;
 int pmap_map_globals () ;

void
machine_init(void)
{
 debug_log_init();
 clock_config();
 is_clock_configured = TRUE;
 if (debug_enabled)
  pmap_map_globals();
}
