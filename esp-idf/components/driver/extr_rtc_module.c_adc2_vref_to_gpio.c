
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int dtest_rtc; int ent_rtc; } ;
struct TYPE_7__ {scalar_t__ dbg_atten; } ;
struct TYPE_12__ {TYPE_2__ test_mux; TYPE_1__ bias_conf; } ;
struct TYPE_10__ {int sar2_en_pad_force; int sar2_en_pad; } ;
struct TYPE_9__ {int sar2_en_test; } ;
struct TYPE_11__ {TYPE_4__ sar_meas_start2; TYPE_3__ sar_start_force; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 scalar_t__ GPIO_NUM_25 ;
 scalar_t__ GPIO_NUM_26 ;
 scalar_t__ GPIO_NUM_27 ;
 TYPE_6__ RTCCNTL ;
 TYPE_5__ SENS ;
 int adc_power_always_on () ;
 int rtc_gpio_init (scalar_t__) ;
 int rtc_gpio_input_disable (scalar_t__) ;
 int rtc_gpio_output_disable (scalar_t__) ;
 int rtc_gpio_pulldown_dis (scalar_t__) ;
 int rtc_gpio_pullup_dis (scalar_t__) ;

esp_err_t adc2_vref_to_gpio(gpio_num_t gpio)
{
    return ESP_OK;
}
