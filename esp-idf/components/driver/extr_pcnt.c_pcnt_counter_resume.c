
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcnt_unit_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int BIT (scalar_t__) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ PCNT ;
 int PCNT_CHECK (int,int ,int ) ;
 scalar_t__ PCNT_CNT_PAUSE_U0_S ;
 int PCNT_ENTER_CRITICAL (int *) ;
 int PCNT_EXIT_CRITICAL (int *) ;
 int PCNT_UNIT_ERR_STR ;
 int PCNT_UNIT_MAX ;
 int pcnt_spinlock ;

esp_err_t pcnt_counter_resume(pcnt_unit_t pcnt_unit)
{
    PCNT_CHECK(pcnt_unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_ENTER_CRITICAL(&pcnt_spinlock);
    PCNT.ctrl.val &= (~(BIT(PCNT_CNT_PAUSE_U0_S + (pcnt_unit * 2))));
    PCNT_EXIT_CRITICAL(&pcnt_spinlock);
    return ESP_OK;
}
