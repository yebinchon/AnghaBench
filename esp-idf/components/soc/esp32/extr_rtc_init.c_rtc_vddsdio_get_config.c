
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int drefh; int drefm; int drefl; int force; int enable; int tieh; } ;
typedef TYPE_1__ rtc_vddsdio_config_t ;


 int BIT (int) ;
 int EFUSE_BLK0_RDATA3_REG ;
 int EFUSE_BLK0_RDATA4_REG ;
 int EFUSE_RD_BLK3_PART_RESERVE ;
 int EFUSE_RD_SDIO_DREFH_M ;
 int EFUSE_RD_SDIO_DREFH_S ;
 int EFUSE_RD_SDIO_DREFL_M ;
 int EFUSE_RD_SDIO_DREFL_S ;
 int EFUSE_RD_SDIO_DREFM_M ;
 int EFUSE_RD_SDIO_DREFM_S ;
 int EFUSE_RD_SDIO_FORCE ;
 int EFUSE_RD_SDIO_TIEH_M ;
 int EFUSE_RD_SDIO_TIEH_S ;
 int EFUSE_RD_XPD_SDIO_REG_M ;
 int EFUSE_RD_XPD_SDIO_REG_S ;
 int GPIO_STRAP_REG ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int REG_READ (int ) ;
 int RTC_CNTL_DREFH_SDIO_M ;
 int RTC_CNTL_DREFH_SDIO_S ;
 int RTC_CNTL_DREFL_SDIO_M ;
 int RTC_CNTL_DREFL_SDIO_S ;
 int RTC_CNTL_DREFM_SDIO_M ;
 int RTC_CNTL_DREFM_SDIO_S ;
 int RTC_CNTL_SDIO_CONF_REG ;
 int RTC_CNTL_SDIO_FORCE ;
 int RTC_CNTL_SDIO_TIEH_M ;
 int RTC_CNTL_SDIO_TIEH_S ;
 int RTC_CNTL_XPD_SDIO_REG_M ;
 int RTC_CNTL_XPD_SDIO_REG_S ;
 int RTC_VDDSDIO_TIEH_1_8V ;
 int RTC_VDDSDIO_TIEH_3_3V ;

rtc_vddsdio_config_t rtc_vddsdio_get_config(void)
{
    rtc_vddsdio_config_t result;
    uint32_t sdio_conf_reg = REG_READ(RTC_CNTL_SDIO_CONF_REG);
    result.drefh = (sdio_conf_reg & RTC_CNTL_DREFH_SDIO_M) >> RTC_CNTL_DREFH_SDIO_S;
    result.drefm = (sdio_conf_reg & RTC_CNTL_DREFM_SDIO_M) >> RTC_CNTL_DREFM_SDIO_S;
    result.drefl = (sdio_conf_reg & RTC_CNTL_DREFL_SDIO_M) >> RTC_CNTL_DREFL_SDIO_S;
    if (sdio_conf_reg & RTC_CNTL_SDIO_FORCE) {

        result.force = 1;
        result.enable = (sdio_conf_reg & RTC_CNTL_XPD_SDIO_REG_M) >> RTC_CNTL_XPD_SDIO_REG_S;
        result.tieh = (sdio_conf_reg & RTC_CNTL_SDIO_TIEH_M) >> RTC_CNTL_SDIO_TIEH_S;
        return result;
    }
    uint32_t efuse_reg = REG_READ(EFUSE_BLK0_RDATA4_REG);
    if (efuse_reg & EFUSE_RD_SDIO_FORCE) {

        result.force = 0;
        result.enable = (efuse_reg & EFUSE_RD_XPD_SDIO_REG_M) >> EFUSE_RD_XPD_SDIO_REG_S;
        result.tieh = (efuse_reg & EFUSE_RD_SDIO_TIEH_M) >> EFUSE_RD_SDIO_TIEH_S;


        if(REG_GET_FIELD(EFUSE_BLK0_RDATA3_REG ,EFUSE_RD_BLK3_PART_RESERVE) == 0){


            result.drefh = (efuse_reg & EFUSE_RD_SDIO_DREFH_M) >> EFUSE_RD_SDIO_DREFH_S;
            result.drefm = (efuse_reg & EFUSE_RD_SDIO_DREFM_M) >> EFUSE_RD_SDIO_DREFM_S;
            result.drefl = (efuse_reg & EFUSE_RD_SDIO_DREFL_M) >> EFUSE_RD_SDIO_DREFL_S;
        }
        return result;
    }


    uint32_t strap_reg = REG_READ(GPIO_STRAP_REG);
    result.force = 0;
    result.tieh = (strap_reg & BIT(5)) ? RTC_VDDSDIO_TIEH_1_8V : RTC_VDDSDIO_TIEH_3_3V;
    result.enable = 1;
    return result;
}
