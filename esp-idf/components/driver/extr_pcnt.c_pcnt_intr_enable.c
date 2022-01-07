
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pcnt_unit_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ int_ena; } ;


 int BIT (scalar_t__) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ PCNT ;
 int PCNT_CHECK (int,int ,int ) ;
 scalar_t__ PCNT_CNT_THR_EVENT_U0_INT_ENA_S ;
 int PCNT_ENTER_CRITICAL (int *) ;
 int PCNT_EXIT_CRITICAL (int *) ;
 int PCNT_UNIT_ERR_STR ;
 scalar_t__ PCNT_UNIT_MAX ;
 int pcnt_spinlock ;

esp_err_t pcnt_intr_enable(pcnt_unit_t pcnt_unit)
{
    PCNT_CHECK(pcnt_unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_ENTER_CRITICAL(&pcnt_spinlock);
    PCNT.int_ena.val |= BIT(PCNT_CNT_THR_EVENT_U0_INT_ENA_S + pcnt_unit);
    PCNT_EXIT_CRITICAL(&pcnt_spinlock);
    return ESP_OK;
}
