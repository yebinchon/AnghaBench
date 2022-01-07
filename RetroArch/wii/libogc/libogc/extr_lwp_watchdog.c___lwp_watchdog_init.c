
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_queue_init_empty (int *) ;
 scalar_t__ _wd_sync_count ;
 scalar_t__ _wd_sync_level ;
 int _wd_ticks_queue ;
 scalar_t__ _wd_ticks_since_boot ;

void __lwp_watchdog_init()
{
 _wd_sync_level = 0;
 _wd_sync_count = 0;
 _wd_ticks_since_boot = 0;

 __lwp_queue_init_empty(&_wd_ticks_queue);
}
