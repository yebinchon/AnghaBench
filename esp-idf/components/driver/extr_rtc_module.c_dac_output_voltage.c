
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;
typedef scalar_t__ dac_channel_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 scalar_t__ DAC_CHANNEL_1 ;
 scalar_t__ DAC_CHANNEL_2 ;
 scalar_t__ DAC_CHANNEL_MAX ;
 int DAC_ERR_STR_CHANNEL_ERROR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_IO_PAD_DAC1_REG ;
 int RTC_IO_PAD_DAC2_REG ;
 int RTC_IO_PDAC1_DAC ;
 int RTC_IO_PDAC1_DAC_S ;
 int RTC_IO_PDAC2_DAC ;
 int RTC_IO_PDAC2_DAC_S ;
 int RTC_MODULE_CHECK (int,int ,int ) ;
 int SENS_DAC_CW_EN1_M ;
 int SENS_DAC_CW_EN2_M ;
 int SENS_SAR_DAC_CTRL1_REG ;
 int SENS_SAR_DAC_CTRL2_REG ;
 int SENS_SW_TONE_EN ;
 int SET_PERI_REG_BITS (int ,int ,int ,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t dac_output_voltage(dac_channel_t channel, uint8_t dac_value)
{
    RTC_MODULE_CHECK((channel >= DAC_CHANNEL_1) && (channel < DAC_CHANNEL_MAX), DAC_ERR_STR_CHANNEL_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rtc_spinlock);

    CLEAR_PERI_REG_MASK(SENS_SAR_DAC_CTRL1_REG, SENS_SW_TONE_EN);


    if (channel == DAC_CHANNEL_1) {
        CLEAR_PERI_REG_MASK(SENS_SAR_DAC_CTRL2_REG, SENS_DAC_CW_EN1_M);
    } else if (channel == DAC_CHANNEL_2) {
        CLEAR_PERI_REG_MASK(SENS_SAR_DAC_CTRL2_REG, SENS_DAC_CW_EN2_M);
    }


    if (channel == DAC_CHANNEL_1) {
        SET_PERI_REG_BITS(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_DAC, dac_value, RTC_IO_PDAC1_DAC_S);
    } else if (channel == DAC_CHANNEL_2) {
        SET_PERI_REG_BITS(RTC_IO_PAD_DAC2_REG, RTC_IO_PDAC2_DAC, dac_value, RTC_IO_PDAC2_DAC_S);
    }

    portEXIT_CRITICAL(&rtc_spinlock);

    return ESP_OK;
}
