
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int divide_by_1 ;
 int lapic_config_timer (int ,int ,int ) ;
 int one_shot ;

__attribute__((used)) static void
rtc_lapic_config_timer(void)
{
 lapic_config_timer(TRUE, one_shot, divide_by_1);
}
