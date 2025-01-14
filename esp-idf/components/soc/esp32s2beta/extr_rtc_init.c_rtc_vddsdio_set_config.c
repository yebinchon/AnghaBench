
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int force; int enable; int drefh; int drefm; int drefl; int tieh; } ;
typedef TYPE_1__ rtc_vddsdio_config_t ;


 int REG_WRITE (int ,int) ;
 int RTC_CNTL_DREFH_SDIO_S ;
 int RTC_CNTL_DREFL_SDIO_S ;
 int RTC_CNTL_DREFM_SDIO_S ;
 int RTC_CNTL_SDIO_CONF_REG ;
 int RTC_CNTL_SDIO_FORCE_S ;
 int RTC_CNTL_SDIO_PD_EN ;
 int RTC_CNTL_SDIO_TIEH_S ;
 int RTC_CNTL_XPD_SDIO_REG_S ;

void rtc_vddsdio_set_config(rtc_vddsdio_config_t config)
{
    uint32_t val = 0;
    val |= (config.force << RTC_CNTL_SDIO_FORCE_S);
    val |= (config.enable << RTC_CNTL_XPD_SDIO_REG_S);
    val |= (config.drefh << RTC_CNTL_DREFH_SDIO_S);
    val |= (config.drefm << RTC_CNTL_DREFM_SDIO_S);
    val |= (config.drefl << RTC_CNTL_DREFL_SDIO_S);
    val |= (config.tieh << RTC_CNTL_SDIO_TIEH_S);
    val |= RTC_CNTL_SDIO_PD_EN;
    REG_WRITE(RTC_CNTL_SDIO_CONF_REG, val);
}
