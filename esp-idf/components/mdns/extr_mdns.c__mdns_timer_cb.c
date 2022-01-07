
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mdns_scheduler_run () ;
 int _mdns_search_run () ;

__attribute__((used)) static void _mdns_timer_cb(void * arg)
{
    _mdns_scheduler_run();
    _mdns_search_run();
}
