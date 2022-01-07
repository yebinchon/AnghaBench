
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


typedef void* adc_bits_width_t ;
struct TYPE_9__ {int sar2_data_inv; void* sar2_sample_bit; } ;
struct TYPE_8__ {int sar2_pwdet_cct; } ;
struct TYPE_7__ {void* sar2_bit_width; } ;
struct TYPE_11__ {int sar2_data_inv; void* sar2_sample_bit; } ;
struct TYPE_10__ {int sar2_pwdet_cct; void* sar2_bit_width; } ;
struct TYPE_12__ {TYPE_3__ sar_reader2_ctrl; TYPE_2__ sar_meas2_mux; TYPE_1__ sar_meas2_ctrl1; TYPE_5__ sar_read_ctrl2; TYPE_4__ sar_start_force; } ;


 TYPE_6__ SENS ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static inline void adc2_config_width(adc_bits_width_t width_bit)
{
    portENTER_CRITICAL(&rtc_spinlock);
}
