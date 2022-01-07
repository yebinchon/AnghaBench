
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wifi_prov_mgr_stop_provisioning () ;

__attribute__((used)) static void stop_prov_timer_cb(void *arg)
{
    wifi_prov_mgr_stop_provisioning();
}
