
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int frequency; int duty_mode; int counter_mode; scalar_t__ cmpr_b; scalar_t__ cmpr_a; } ;
typedef TYPE_1__ mcpwm_config_t ;


 int MCPWM_DUTY_MODE_0 ;
 int MCPWM_OPR_A ;
 int MCPWM_TIMER_0 ;
 int MCPWM_UNIT_0 ;
 int MCPWM_UP_COUNTER ;
 scalar_t__ SERVO_MAX_DEGREE ;
 int mcpwm_example_gpio_initialize () ;
 int mcpwm_init (int ,int ,TYPE_1__*) ;
 int mcpwm_set_duty_in_us (int ,int ,int ,scalar_t__) ;
 int printf (char*,...) ;
 scalar_t__ servo_per_degree_init (scalar_t__) ;
 int vTaskDelay (int) ;

void mcpwm_example_servo_control(void *arg)
{
    uint32_t angle, count;

    mcpwm_example_gpio_initialize();


    printf("Configuring Initial Parameters of mcpwm......\n");
    mcpwm_config_t pwm_config;
    pwm_config.frequency = 50;
    pwm_config.cmpr_a = 0;
    pwm_config.cmpr_b = 0;
    pwm_config.counter_mode = MCPWM_UP_COUNTER;
    pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
    mcpwm_init(MCPWM_UNIT_0, MCPWM_TIMER_0, &pwm_config);
    while (1) {
        for (count = 0; count < SERVO_MAX_DEGREE; count++) {
            printf("Angle of rotation: %d\n", count);
            angle = servo_per_degree_init(count);
            printf("pulse width: %dus\n", angle);
            mcpwm_set_duty_in_us(MCPWM_UNIT_0, MCPWM_TIMER_0, MCPWM_OPR_A, angle);
            vTaskDelay(10);
        }
    }
}
