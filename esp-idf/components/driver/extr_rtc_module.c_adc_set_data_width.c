
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int adc_unit_t ;
typedef scalar_t__ adc_bits_width_t ;
struct TYPE_15__ {scalar_t__ sar2_sample_bit; } ;
struct TYPE_14__ {scalar_t__ sar2_bit_width; } ;
struct TYPE_13__ {scalar_t__ sar1_sample_bit; } ;
struct TYPE_12__ {scalar_t__ sar1_bit_width; } ;
struct TYPE_11__ {scalar_t__ sar2_sample_bit; } ;
struct TYPE_10__ {scalar_t__ sar2_bit_width; scalar_t__ sar1_bit_width; } ;
struct TYPE_9__ {scalar_t__ sar1_sample_bit; } ;
struct TYPE_16__ {TYPE_7__ sar_reader2_ctrl; TYPE_6__ sar_meas2_ctrl1; TYPE_5__ sar_reader1_ctrl; TYPE_4__ sar_meas1_ctrl1; TYPE_3__ sar_read_ctrl2; TYPE_2__ sar_start_force; TYPE_1__ sar_read_ctrl; } ;


 int ADC_CHECK_UNIT (int) ;
 int ADC_UNIT_1 ;
 int ADC_UNIT_2 ;
 scalar_t__ ADC_WIDTH_MAX ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 TYPE_8__ SENS ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc_set_data_width(adc_unit_t adc_unit, adc_bits_width_t bits)
{
    ADC_CHECK_UNIT(adc_unit);
    RTC_MODULE_CHECK(bits < ADC_WIDTH_MAX, "ADC bit width error", ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rtc_spinlock);
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
