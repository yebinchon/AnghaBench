
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* force_xpd_sar; } ;
struct TYPE_4__ {void* force_xpd_sar; } ;
struct TYPE_6__ {TYPE_2__ sar_power_xpd_sar; TYPE_1__ sar_meas_wait2; } ;


 TYPE_3__ SENS ;
 void* SENS_FORCE_XPD_SAR_PU ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

void adc_power_always_on(void)
{
    portENTER_CRITICAL(&rtc_spinlock);





    portEXIT_CRITICAL(&rtc_spinlock);
}
