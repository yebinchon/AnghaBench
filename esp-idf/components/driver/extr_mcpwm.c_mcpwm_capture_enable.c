
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_capture_signal_t ;
typedef int mcpwm_capture_on_edge_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int timer_en; } ;
struct TYPE_6__ {TYPE_1__* cap_cfg_ch; TYPE_2__ cap_timer_cfg; } ;
struct TYPE_4__ {int en; int mode; int prescale; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_capture_enable(mcpwm_unit_t mcpwm_num, mcpwm_capture_signal_t cap_sig, mcpwm_capture_on_edge_t cap_edge,
                               uint32_t num_of_pulse)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    MCPWM[mcpwm_num]->cap_timer_cfg.timer_en = 1;
    MCPWM[mcpwm_num]->cap_cfg_ch[cap_sig].en = 1;
    MCPWM[mcpwm_num]->cap_cfg_ch[cap_sig].mode = (1 << cap_edge);
    MCPWM[mcpwm_num]->cap_cfg_ch[cap_sig].prescale = num_of_pulse;
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
