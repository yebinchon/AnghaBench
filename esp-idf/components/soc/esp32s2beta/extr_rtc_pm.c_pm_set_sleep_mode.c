
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wifi_pd_en; int dig_dbias_wak; int rtc_dbias_slp; int rtc_dbias_wak; int dig_dbias_slp; int member_0; } ;
typedef TYPE_1__ rtc_sleep_config_t ;
typedef int pm_sw_reject_t ;
typedef int pm_sleep_mode_t ;



 int PM_SW_NOREJECT ;
 int PM_SW_REJECT ;
 int assert (int ) ;
 scalar_t__ pm_check_mac_idle () ;
 int pm_mac_deinit () ;
 int pm_mac_init () ;
 int rtc_sleep_init (TYPE_1__) ;

pm_sw_reject_t pm_set_sleep_mode(pm_sleep_mode_t sleep_mode, void(*pmac_save_params)(void))
{
    (void) pmac_save_params;

    pm_mac_deinit();
    if (pm_check_mac_idle()) {
        pm_mac_init();
        return PM_SW_REJECT;
    }

    rtc_sleep_config_t cfg = { 0 };

    switch (sleep_mode) {
        case 128:
            cfg.wifi_pd_en = 1;
            cfg.dig_dbias_wak = 4;
            cfg.dig_dbias_slp = 0;
            cfg.rtc_dbias_wak = 0;
            cfg.rtc_dbias_slp = 0;
            rtc_sleep_init(cfg);
            break;

        default:
            assert(0 && "unsupported sleep mode");
    }
    return PM_SW_NOREJECT;
}
