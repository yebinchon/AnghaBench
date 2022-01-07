
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_t ;


 int RARCH_NETPLAY_DISCOVERY_CTL_LAN_CLEAR_RESPONSES ;
 int RARCH_NETPLAY_DISCOVERY_CTL_LAN_SEND_QUERY ;
 scalar_t__ init_netplay_discovery () ;
 int netplay_discovery_driver_ctl (int ,int *) ;
 int task_set_finished (int *,int) ;
 int task_set_progress (int *,int) ;

__attribute__((used)) static void task_netplay_lan_scan_handler(retro_task_t *task)
{
   if (init_netplay_discovery())
   {
      netplay_discovery_driver_ctl(
            RARCH_NETPLAY_DISCOVERY_CTL_LAN_CLEAR_RESPONSES, ((void*)0));
      netplay_discovery_driver_ctl(
            RARCH_NETPLAY_DISCOVERY_CTL_LAN_SEND_QUERY, ((void*)0));
   }

   task_set_progress(task, 100);
   task_set_finished(task, 1);

   return;
}
