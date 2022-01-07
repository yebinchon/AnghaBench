
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pulse_gpio_num; int ctrl_gpio_num; int counter_l_lim; int counter_h_lim; int hctrl_mode; int lctrl_mode; int neg_mode; int pos_mode; int unit; int channel; } ;
typedef TYPE_1__ pcnt_config_t ;


 int HIGHEST_LIMIT ;
 int LOWEST_LIMIT ;
 int PCNT_CHANNEL_0 ;
 int PCNT_COUNT_DIS ;
 int PCNT_COUNT_INC ;
 int PCNT_MODE_KEEP ;
 int PCNT_MODE_REVERSE ;
 int PCNT_UNIT_0 ;
 int TEST_ESP_OK (int ) ;
 int pcnt_unit_config (TYPE_1__*) ;

__attribute__((used)) static void pcnt_init(int pulse_gpio_num, int ctrl_gpio_num)
{
    pcnt_config_t pcnt_config = {
       .pulse_gpio_num = pulse_gpio_num,
       .ctrl_gpio_num = ctrl_gpio_num,
       .channel = PCNT_CHANNEL_0,
       .unit = PCNT_UNIT_0,
       .pos_mode = PCNT_COUNT_INC,
       .neg_mode = PCNT_COUNT_DIS,
       .lctrl_mode = PCNT_MODE_REVERSE,
       .hctrl_mode = PCNT_MODE_KEEP,
       .counter_h_lim = HIGHEST_LIMIT,
       .counter_l_lim = LOWEST_LIMIT,
   };
   TEST_ESP_OK(pcnt_unit_config(&pcnt_config));
}
