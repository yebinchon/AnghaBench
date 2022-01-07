
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


typedef int uint16_t ;
typedef scalar_t__ adc_unit_t ;
struct TYPE_11__ {int sar2_en_pad; int meas2_start_sar; scalar_t__ meas2_done_sar; int meas2_data_sar; } ;
struct TYPE_10__ {int sar1_en_pad; int meas1_start_sar; scalar_t__ meas1_done_sar; int meas1_data_sar; } ;
struct TYPE_9__ {scalar_t__ meas_status; } ;
struct TYPE_8__ {int sar2_en_pad; int meas2_start_sar; scalar_t__ meas2_done_sar; int meas2_data_sar; } ;
struct TYPE_7__ {int sar1_en_pad; int meas1_start_sar; scalar_t__ meas1_done_sar; int meas1_data_sar; } ;
struct TYPE_12__ {TYPE_5__ sar_meas2_ctrl2; TYPE_4__ sar_meas1_ctrl2; TYPE_3__ sar_slave_addr1; TYPE_2__ sar_meas_start2; TYPE_1__ sar_meas_start1; } ;


 scalar_t__ ADC_UNIT_1 ;
 scalar_t__ ADC_UNIT_2 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 TYPE_6__ SENS ;
 int TAG ;

__attribute__((used)) static int adc_convert( adc_unit_t unit, int channel)
{
    uint16_t adc_value = 0;
    return adc_value;
}
