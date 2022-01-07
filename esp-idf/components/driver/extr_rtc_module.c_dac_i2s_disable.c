
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int ESP_OK ;
 int SENS_DAC_CLK_INV_M ;
 int SENS_DAC_DIG_FORCE_M ;
 int SENS_SAR_DAC_CTRL1_REG ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t dac_i2s_disable(void)
{
    portENTER_CRITICAL(&rtc_spinlock);
    CLEAR_PERI_REG_MASK(SENS_SAR_DAC_CTRL1_REG, SENS_DAC_DIG_FORCE_M | SENS_DAC_CLK_INV_M);
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
