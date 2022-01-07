
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lapic_config_tsc_deadline_timer () ;

__attribute__((used)) static void
rtc_lapic_config_tsc_deadline_timer(void)
{
 lapic_config_tsc_deadline_timer();
}
