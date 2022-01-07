
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int periph_module_t ;


 int DPORT_CAN_RST ;
 int DPORT_EMAC_RST ;
 int DPORT_I2C_EXT0_RST ;
 int DPORT_I2C_EXT1_RST ;
 int DPORT_I2S0_RST ;
 int DPORT_I2S1_RST ;
 int DPORT_LEDC_RST ;
 int DPORT_PCNT_RST ;
 int DPORT_PERI_EN_AES ;
 int DPORT_PERI_EN_DIGITAL_SIGNATURE ;
 int DPORT_PERI_EN_RSA ;
 int DPORT_PERI_EN_SECUREBOOT ;
 int DPORT_PERI_EN_SHA ;
 int DPORT_PWM0_RST ;
 int DPORT_PWM1_RST ;
 int DPORT_PWM2_RST ;
 int DPORT_PWM3_RST ;
 int DPORT_RMT_RST ;
 int DPORT_SDIO_HOST_RST ;
 int DPORT_SDIO_RST ;
 int DPORT_SPI01_RST ;
 int DPORT_SPI2_DMA_RST ;
 int DPORT_SPI2_RST ;
 int DPORT_SPI3_DMA_RST ;
 int DPORT_SPI3_RST ;
 int DPORT_SPI4_RST ;
 int DPORT_SPI_DMA_RST ;
 int DPORT_SPI_SHARED_DMA_RST ;
 int DPORT_TIMERGROUP1_RST ;
 int DPORT_TIMERGROUP_RST ;
 int DPORT_UART1_RST ;
 int DPORT_UART2_RST ;
 int DPORT_UART_RST ;
 int DPORT_UHCI0_RST ;
 int DPORT_UHCI1_RST ;
 int DPORT_USB_RST ;
__attribute__((used)) static uint32_t get_rst_en_mask(periph_module_t periph, bool enable)
{
    switch(periph) {
        case 148:
            return DPORT_RMT_RST;
        case 154:
            return DPORT_LEDC_RST;
        case 136:
            return DPORT_UART_RST;
        case 135:
            return DPORT_UART1_RST;







        case 158:
            return DPORT_I2C_EXT0_RST;
        case 157:
            return DPORT_I2C_EXT1_RST;
        case 156:
            return DPORT_I2S0_RST;
        case 155:
            return DPORT_I2S1_RST;
        case 138:
            return DPORT_TIMERGROUP_RST;
        case 137:
            return DPORT_TIMERGROUP1_RST;
        case 152:
            return DPORT_PWM0_RST;
        case 151:
            return DPORT_PWM1_RST;
        case 150:
            return DPORT_PWM2_RST;
        case 149:
            return DPORT_PWM3_RST;
        case 133:
            return DPORT_UHCI0_RST;
        case 132:
            return DPORT_UHCI1_RST;
        case 153:
            return DPORT_PCNT_RST;
        case 140:
            return DPORT_SPI01_RST;
        case 145:
            return DPORT_SDIO_HOST_RST;
        case 146:
            return DPORT_SDIO_RST;
        case 162:
            return DPORT_CAN_RST;
        case 161:
            return DPORT_EMAC_RST;
        case 128:
        case 163:
        case 129:
        case 165:
        case 164:
            return 0;
        default:
            return 0;
    }
}
