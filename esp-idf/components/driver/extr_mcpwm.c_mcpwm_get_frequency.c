
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
struct TYPE_6__ {TYPE_2__* timer; } ;
struct TYPE_4__ {int period; } ;
struct TYPE_5__ {TYPE_1__ period; } ;


 int ESP_ERR_INVALID_ARG ;
 TYPE_3__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 int MCPWM_CLK ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int TIMER_CLK_PRESCALE ;

uint32_t mcpwm_get_frequency(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num)
{
    uint32_t frequency;
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    frequency = MCPWM_CLK / ((MCPWM[mcpwm_num]->timer[timer_num].period.period) * (TIMER_CLK_PRESCALE + 1));
    return frequency;
}
