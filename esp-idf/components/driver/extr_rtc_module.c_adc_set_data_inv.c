
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int adc_unit_t ;
struct TYPE_9__ {int sar2_data_inv; } ;
struct TYPE_8__ {int sar1_data_inv; } ;
struct TYPE_7__ {int sar2_data_inv; } ;
struct TYPE_6__ {int sar1_data_inv; } ;
struct TYPE_10__ {TYPE_4__ sar_reader2_ctrl; TYPE_3__ sar_reader1_ctrl; TYPE_2__ sar_read_ctrl2; TYPE_1__ sar_read_ctrl; } ;


 int ADC_UNIT_1 ;
 int ADC_UNIT_2 ;
 int ESP_OK ;
 TYPE_5__ SENS ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc_set_data_inv(adc_unit_t adc_unit, bool inv_en)
{
    portENTER_CRITICAL(&rtc_spinlock);
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
