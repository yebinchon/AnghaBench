
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int periph_module_t ;


 int DPORT_BT_BASEBAND_EN ;
 int DPORT_BT_LC_EN ;
 int DPORT_CAN_CLK_EN ;
 int DPORT_I2C_EXT0_CLK_EN ;
 int DPORT_I2C_EXT1_CLK_EN ;
 int DPORT_I2S0_CLK_EN ;
 int DPORT_I2S1_CLK_EN ;
 int DPORT_LEDC_CLK_EN ;
 int DPORT_PCNT_CLK_EN ;
 int DPORT_PERI_EN_AES ;
 int DPORT_PERI_EN_RSA ;
 int DPORT_PERI_EN_SHA ;
 int DPORT_PWM0_CLK_EN ;
 int DPORT_PWM1_CLK_EN ;
 int DPORT_PWM2_CLK_EN ;
 int DPORT_PWM3_CLK_EN ;
 int DPORT_RMT_CLK_EN ;
 int DPORT_SPI01_CLK_EN ;
 int DPORT_SPI2_CLK_EN ;
 int DPORT_SPI2_DMA_CLK_EN ;
 int DPORT_SPI3_CLK_EN ;
 int DPORT_SPI3_DMA_CLK_EN ;
 int DPORT_SPI4_CLK_EN ;
 int DPORT_SPI_DMA_CLK_EN ;
 int DPORT_SPI_SHARED_DMA_CLK_EN ;
 int DPORT_TIMERGROUP1_CLK_EN ;
 int DPORT_TIMERGROUP_CLK_EN ;
 int DPORT_UART1_CLK_EN ;
 int DPORT_UART2_CLK_EN ;
 int DPORT_UART_CLK_EN ;
 int DPORT_UHCI0_CLK_EN ;
 int DPORT_UHCI1_CLK_EN ;
 int DPORT_USB_CLK_EN ;
 int DPORT_WIFI_CLK_BT_EN_M ;
 int DPORT_WIFI_CLK_EMAC_EN ;
 int DPORT_WIFI_CLK_RNG_EN ;
 int DPORT_WIFI_CLK_SDIOSLAVE_EN ;
 int DPORT_WIFI_CLK_SDIO_HOST_EN ;
 int DPORT_WIFI_CLK_WIFI_BT_COMMON_M ;
 int DPORT_WIFI_CLK_WIFI_EN_M ;
__attribute__((used)) static uint32_t get_clk_en_mask(periph_module_t periph)
{
    switch(periph) {
        case 149:
            return DPORT_RMT_CLK_EN;
        case 155:
            return DPORT_LEDC_CLK_EN;
        case 136:
            return DPORT_UART_CLK_EN;
        case 135:
            return DPORT_UART1_CLK_EN;







        case 159:
            return DPORT_I2C_EXT0_CLK_EN;
        case 158:
            return DPORT_I2C_EXT1_CLK_EN;
        case 157:
            return DPORT_I2S0_CLK_EN;
        case 156:
            return DPORT_I2S1_CLK_EN;
        case 138:
            return DPORT_TIMERGROUP_CLK_EN;
        case 137:
            return DPORT_TIMERGROUP1_CLK_EN;
        case 153:
            return DPORT_PWM0_CLK_EN;
        case 152:
            return DPORT_PWM1_CLK_EN;
        case 151:
            return DPORT_PWM2_CLK_EN;
        case 150:
            return DPORT_PWM3_CLK_EN;
        case 133:
            return DPORT_UHCI0_CLK_EN;
        case 132:
            return DPORT_UHCI1_CLK_EN;
        case 154:
            return DPORT_PCNT_CLK_EN;
        case 140:
            return DPORT_SPI01_CLK_EN;
        case 145:
            return DPORT_WIFI_CLK_SDIO_HOST_EN;
        case 146:
            return DPORT_WIFI_CLK_SDIOSLAVE_EN;
        case 163:
            return DPORT_CAN_CLK_EN;
        case 162:
            return DPORT_WIFI_CLK_EMAC_EN;
        case 148:
            return DPORT_WIFI_CLK_RNG_EN;
        case 128:





        case 164:
            return DPORT_WIFI_CLK_BT_EN_M;
        case 129:
            return DPORT_WIFI_CLK_WIFI_BT_COMMON_M;
        case 166:
            return DPORT_BT_BASEBAND_EN;
        case 165:
            return DPORT_BT_LC_EN;
        default:
            return 0;
    }
}
