
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mux_sel; int fun_ie; scalar_t__ fun_sel; } ;
struct TYPE_3__ {int ext0_rtc_gpio_num; int ext0_trigger_level; } ;


 size_t GPIO_PIN_COUNT ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_EXT_WAKEUP0_LV_S ;
 int RTC_CNTL_EXT_WAKEUP_CONF_REG ;
 scalar_t__ RTC_GPIO_IS_VALID_GPIO (size_t) ;
 int RTC_IO_EXT_WAKEUP0_REG ;
 int RTC_IO_EXT_WAKEUP0_SEL ;
 int SET_PERI_REG_BITS (int ,int,int ,int ) ;
 TYPE_2__** rtc_gpio_reg ;
 TYPE_1__ s_config ;

__attribute__((used)) static void ext0_wakeup_prepare(void)
{
    int rtc_gpio_num = s_config.ext0_rtc_gpio_num;

    REG_SET_FIELD(RTC_IO_EXT_WAKEUP0_REG, RTC_IO_EXT_WAKEUP0_SEL, rtc_gpio_num);

    SET_PERI_REG_BITS(RTC_CNTL_EXT_WAKEUP_CONF_REG, 0x1,
            s_config.ext0_trigger_level, RTC_CNTL_EXT_WAKEUP0_LV_S);

    for (size_t gpio_num = 0; gpio_num < GPIO_PIN_COUNT; ++gpio_num) {
        if (gpio_num == rtc_gpio_num && RTC_GPIO_IS_VALID_GPIO(gpio_num)) {
            rtc_gpio_reg[gpio_num]->mux_sel = 1;
            rtc_gpio_reg[gpio_num]->fun_sel = 0;
            rtc_gpio_reg[gpio_num]->fun_ie = 1;
            break;
        }
    }
}
