
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ adc_unit_t ;
typedef int adc_controller_t ;
struct TYPE_24__ {int xpd_hall_force; int hall_phase_force; } ;
struct TYPE_23__ {int meas1_start_force; int sar1_en_pad_force; } ;
struct TYPE_22__ {int sar1_dig_force; } ;
struct TYPE_21__ {int sar2_mux; } ;
struct TYPE_20__ {int sar2_dig_force; int sar2_pwdet_force; } ;
struct TYPE_19__ {int meas2_start_force; int sar2_en_pad_force; } ;
struct TYPE_18__ {int xpd_hall_force; int hall_phase_force; } ;
struct TYPE_17__ {int meas1_start_force; int sar1_en_pad_force; } ;
struct TYPE_16__ {int sar1_dig_force; } ;
struct TYPE_13__ {int meas2_start_force; int sar2_en_pad_force; } ;
struct TYPE_15__ {TYPE_10__ sar_meas2_ctrl2; TYPE_9__ sar_hall_ctrl; TYPE_8__ sar_meas1_ctrl2; TYPE_7__ sar_meas1_mux; TYPE_5__ sar_read_ctrl2; TYPE_4__ sar_meas_start2; TYPE_3__ sar_touch_ctrl1; TYPE_2__ sar_meas_start1; TYPE_1__ sar_read_ctrl; } ;
struct TYPE_14__ {TYPE_6__ saradc_ctrl; } ;






 scalar_t__ ADC_UNIT_1 ;
 scalar_t__ ADC_UNIT_2 ;
 int ESP_LOGE (int ,char*) ;
 TYPE_12__ SENS ;
 TYPE_11__ SYSCON ;
 int TAG ;
 int assert (int ) ;

__attribute__((used)) static void adc_set_controller(adc_unit_t unit, adc_controller_t ctrl )
{
}
