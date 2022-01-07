
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mcpwm_unit_t ;
typedef int intr_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 scalar_t__ ETS_PWM0_INTR_SOURCE ;
 int MCPWM_CHECK (int,int ,int ) ;
 int MCPWM_PARAM_ADDR_ERROR ;
 scalar_t__ MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int esp_intr_alloc (scalar_t__,int,void (*) (void*),void*,int *) ;

esp_err_t mcpwm_isr_register(mcpwm_unit_t mcpwm_num, void (*fn)(void *), void *arg, int intr_alloc_flags, intr_handle_t *handle)
{
    esp_err_t ret;
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(fn != ((void*)0), MCPWM_PARAM_ADDR_ERROR, ESP_ERR_INVALID_ARG);
    ret = esp_intr_alloc((ETS_PWM0_INTR_SOURCE + mcpwm_num), intr_alloc_flags, fn, arg, handle);
    return ret;
}
