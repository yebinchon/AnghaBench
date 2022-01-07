
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_capture_signal_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* cap_cfg_ch; } ;
struct TYPE_3__ {scalar_t__ en; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_capture_disable(mcpwm_unit_t mcpwm_num, mcpwm_capture_signal_t cap_sig)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    MCPWM[mcpwm_num]->cap_cfg_ch[cap_sig].en = 0;
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
