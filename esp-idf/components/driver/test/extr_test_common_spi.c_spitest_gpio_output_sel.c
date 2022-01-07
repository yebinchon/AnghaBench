
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {TYPE_1__* func_out_sel_cfg; } ;
struct TYPE_3__ {size_t func_sel; } ;


 TYPE_2__ GPIO ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_SELECT (int ,int) ;

void spitest_gpio_output_sel(uint32_t gpio_num, int func, uint32_t signal_idx)
{
    PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[gpio_num], func);
    GPIO.func_out_sel_cfg[gpio_num].func_sel=signal_idx;
}
