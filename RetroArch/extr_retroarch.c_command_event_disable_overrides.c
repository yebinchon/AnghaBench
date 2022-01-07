
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_unload_override () ;
 int runloop_overrides_active ;

__attribute__((used)) static void command_event_disable_overrides(void)
{
   if (!runloop_overrides_active)
      return;


   config_unload_override();
   runloop_overrides_active = 0;
}
