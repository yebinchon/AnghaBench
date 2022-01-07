
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;


 int MCPWM_DUTY_MODE_0 ;
 int MCPWM_OPR_A ;
 int MCPWM_OPR_B ;
 int mcpwm_set_duty (int ,int ,int ,float) ;
 int mcpwm_set_duty_type (int ,int ,int ,int ) ;
 int mcpwm_set_signal_low (int ,int ,int ) ;

__attribute__((used)) static void brushed_motor_forward(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num , float duty_cycle)
{
    mcpwm_set_signal_low(mcpwm_num, timer_num, MCPWM_OPR_B);
    mcpwm_set_duty(mcpwm_num, timer_num, MCPWM_OPR_A, duty_cycle);
    mcpwm_set_duty_type(mcpwm_num, timer_num, MCPWM_OPR_A, MCPWM_DUTY_MODE_0);
}
