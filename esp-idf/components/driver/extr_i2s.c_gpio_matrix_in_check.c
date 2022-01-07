
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GPIO_MODE_DEF_INPUT ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int gpio_matrix_in (int,int,int) ;
 int gpio_set_direction (int,int ) ;

__attribute__((used)) inline static void gpio_matrix_in_check(uint32_t gpio, uint32_t signal_idx, bool inv)
{
    if (gpio != -1) {
        PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[gpio], PIN_FUNC_GPIO);

        gpio_set_direction(gpio, GPIO_MODE_DEF_INPUT);
        gpio_matrix_in(gpio, signal_idx, inv);
    }
}
