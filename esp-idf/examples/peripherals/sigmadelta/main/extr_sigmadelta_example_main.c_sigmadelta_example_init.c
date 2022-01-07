
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sigmadelta_prescale; int sigmadelta_gpio; int sigmadelta_duty; int channel; } ;
typedef TYPE_1__ sigmadelta_config_t ;


 int GPIO_NUM_4 ;
 int SIGMADELTA_CHANNEL_0 ;
 int sigmadelta_config (TYPE_1__*) ;

__attribute__((used)) static void sigmadelta_example_init(void)
{
    sigmadelta_config_t sigmadelta_cfg = {
        .channel = SIGMADELTA_CHANNEL_0,
        .sigmadelta_prescale = 80,
        .sigmadelta_duty = 0,
        .sigmadelta_gpio = GPIO_NUM_4,
    };
    sigmadelta_config(&sigmadelta_cfg);
}
