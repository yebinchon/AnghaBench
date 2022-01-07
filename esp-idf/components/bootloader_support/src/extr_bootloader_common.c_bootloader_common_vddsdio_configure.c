
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enable; scalar_t__ tieh; int drefh; int drefm; int drefl; int force; } ;
typedef TYPE_1__ rtc_vddsdio_config_t ;


 scalar_t__ RTC_VDDSDIO_TIEH_1_8V ;
 int ets_delay_us (int) ;
 TYPE_1__ rtc_vddsdio_get_config () ;
 int rtc_vddsdio_set_config (TYPE_1__) ;

void bootloader_common_vddsdio_configure(void)
{
}
