
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef scalar_t__ mcpwm_fault_signal_t ;
typedef int esp_err_t ;
struct TYPE_3__ {scalar_t__ f2_en; scalar_t__ f1_en; scalar_t__ f0_en; } ;
struct TYPE_4__ {TYPE_1__ fault_detect; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 scalar_t__ MCPWM_SELECT_F0 ;
 scalar_t__ MCPWM_SELECT_F1 ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_fault_deinit(mcpwm_unit_t mcpwm_num, mcpwm_fault_signal_t fault_sig)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    if (fault_sig == MCPWM_SELECT_F0) {
        MCPWM[mcpwm_num]->fault_detect.f0_en = 0;
    } else if (fault_sig == MCPWM_SELECT_F1) {
        MCPWM[mcpwm_num]->fault_detect.f1_en = 0;
    } else {
        MCPWM[mcpwm_num]->fault_detect.f2_en = 0;
    }
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
