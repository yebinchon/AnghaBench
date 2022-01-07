
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int GPIO_CHECK (int ,char*,int ) ;
 scalar_t__ GPIO_ISR_CORE_ID_UNINIT ;
 int GPIO_IS_VALID_GPIO (int ) ;
 int gpio_intr_enable_on_core (int ,scalar_t__) ;
 int gpio_spinlock ;
 scalar_t__ isr_core_id ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 scalar_t__ xPortGetCoreID () ;

esp_err_t gpio_intr_enable(gpio_num_t gpio_num)
{
    GPIO_CHECK(GPIO_IS_VALID_GPIO(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&gpio_spinlock);
    if(isr_core_id == GPIO_ISR_CORE_ID_UNINIT) {
        isr_core_id = xPortGetCoreID();
    }
    portEXIT_CRITICAL(&gpio_spinlock);
    return gpio_intr_enable_on_core (gpio_num, isr_core_id);
}
