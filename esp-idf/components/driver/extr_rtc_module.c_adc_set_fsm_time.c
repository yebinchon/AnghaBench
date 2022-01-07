
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {int rstb_wait; int start_wait; int standby_wait; int sample_cycle; } ;
struct TYPE_4__ {int rstb_wait; int xpd_wait; int standby_wait; } ;
struct TYPE_6__ {TYPE_2__ saradc_fsm; TYPE_1__ saradc_fsm_wait; } ;


 int ESP_OK ;
 TYPE_3__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static esp_err_t adc_set_fsm_time(int rst_wait, int start_wait, int standby_wait, int sample_cycle)
{
    portENTER_CRITICAL(&rtc_spinlock);
    if (sample_cycle >= 0) {
        SYSCON.saradc_fsm.sample_cycle = sample_cycle;
    }
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
