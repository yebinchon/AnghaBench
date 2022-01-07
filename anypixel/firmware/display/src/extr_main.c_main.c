
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ledPacket_type ;
struct TYPE_7__ {int* payload; int type; int param1; } ;
struct TYPE_11__ {int* ua; TYPE_1__ s; int * a; } ;
struct TYPE_8__ {int* payload; scalar_t__ type; } ;
struct TYPE_10__ {TYPE_2__ s; int * a; } ;
struct TYPE_9__ {int HCLK_Frequency; } ;
typedef TYPE_3__ RCC_ClocksTypeDef ;


 int ANALOG_Config () ;
 int ANALOG_get_voltage (int ) ;
 int BLACK_TIMEOUT ;
 int BUTTONS_Config () ;
 int BUTTONS_Read (int) ;
 int CONFIG_get_addr () ;
 int DEBUGPIN_Config () ;
 int Delay (int) ;
 int FanCapture ;
 int FanLastIrq ;
 int LED_PACKET_HEADER_LEN ;
 int LocalTime ;
 int* MACaddr ;
 int NVIC_SetPriority (int ,int ) ;
 int NVIC_SystemReset () ;
 int RCC_GetClocksFreq (TYPE_3__*) ;
 scalar_t__ RESET ;
 int SYSTEMTICK_PERIOD_MS ;
 int SysTick_CLKSourceConfig (int ) ;
 int SysTick_CLKSource_HCLK ;
 int SysTick_Config (int) ;
 int SysTick_IRQn ;
 int TICKS_PER_MS ;
 int TLC59401_CHANNELS ;
 int TLC59401_Config () ;
 int TLC59401_GetCalibration (int ,int*) ;
 int TLC59401_Send () ;
 int TLC59401_SendDotCorrection () ;
 int TLC59401_Set8bitCalValue (int,int) ;
 int TLC59401_SetCalibration (int ,int*) ;
 int TLC59401_SetDotCorrection (int,void*) ;
 int TLC59401_SetDotCorrectionPacket (int*) ;
 int TLC59401_SetPacket (int*) ;
 int TLC59401_SetValue (int,int) ;
 int UART_Config (int *) ;
 int USART1 ;
 int USART_ClearFlag (int ,int ) ;
 int USART_FLAG_ORE ;
 int USART_FLAG_RXNE ;
 int USART_FLAG_TXE ;
 scalar_t__ USART_GetFlagStatus (int ,int ) ;
 int USART_ReceiveData (int ) ;
 int USART_SendData (int ,int ) ;
 int * analog_map ;
 int busAddress ;
 int eeprom_Config () ;
 int eeprom_ReadMAC (int*) ;
 void* fan_pwm ;
 int fan_set_duty (void*) ;
 int fan_setup () ;
 TYPE_5__ inPacket ;
 int lastByteTime ;
 void* led_pwm ;
 TYPE_4__ outPacket ;
 int packetIdx ;
 int packetStarted ;
 void* unpack12bit (int*,int) ;
 int * usarts ;
 int usleep (int) ;

int main(void) {
    int i;
    uint8_t inByte;
    int RXcount = 0;
    int TXcount = 0;
    int RX_overrun_clear_count = 0;

    RCC_ClocksTypeDef RCC_Clocks;

    LocalTime = 0;



    SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK);


    busAddress = CONFIG_get_addr();
    if(busAddress == 0) {
        eeprom_Config();
        eeprom_ReadMAC(MACaddr);
    }


    usleep(100000);
    ANALOG_Config();


    RCC_GetClocksFreq(&RCC_Clocks);
    SysTick_Config(RCC_Clocks.HCLK_Frequency / (1000/SYSTEMTICK_PERIOD_MS*TICKS_PER_MS));


    NVIC_SetPriority (SysTick_IRQn, 0);

    if(busAddress == 3)
        fan_setup();

    Delay(1000);

    DEBUGPIN_Config();

    BUTTONS_Config();

    TLC59401_Config();


    for(i = 0; i < 32; i ++) {
        TLC59401_SetValue(i, 500);
        if(i > 0)
            TLC59401_SetValue(i-1, 0);
        TLC59401_Send();
        Delay(30);
    }
    TLC59401_SetValue(31, 0);
    TLC59401_Send();
    Delay(30);


    TLC59401_SetValue(2, 500);
    if(busAddress >= 1)
        TLC59401_SetValue(5, 500);
    if(busAddress >= 2)
        TLC59401_SetValue(8, 500);
    if(busAddress >= 3)
        TLC59401_SetValue(11, 500);
    if(busAddress >= 4)
        TLC59401_SetValue(14, 500);
    TLC59401_Send();
    Delay(30);

    UART_Config(&usarts[0]);
    while(1) {

        while(1) {

            while( USART_GetFlagStatus(USART1,USART_FLAG_RXNE) == RESET ) {
                if(USART_GetFlagStatus(USART1,USART_FLAG_ORE)) {
                    USART_ClearFlag(USART1,USART_FLAG_ORE);
                    RX_overrun_clear_count++;
                    packetStarted = 0;
                }

                if((LocalTime - lastByteTime) > TICKS_PER_MS)
                    packetStarted = 0;
                if((LocalTime - lastByteTime) > (BLACK_TIMEOUT*TICKS_PER_MS)) {
                    for(i=0; i < TLC59401_CHANNELS; i++)
                        TLC59401_SetValue(i, 0);
                    TLC59401_Send();
                }
            }
            inByte = USART_ReceiveData(USART1);
            RXcount++;
            if(!packetStarted) {
                if((LocalTime - lastByteTime) > TICKS_PER_MS) {

                    packetStarted = 1;
                    packetIdx = 0;
                } else {

                    lastByteTime = LocalTime;
                    continue;
                }
            }
            outPacket.a[packetIdx++] = inByte;
            lastByteTime = LocalTime;
            if( packetIdx >= sizeof(ledPacket_type) ) {

                packetStarted = 0;
                break;
            }
        }

        for(i = 0; i < LED_PACKET_HEADER_LEN; i++) {
            inPacket.a[i] = outPacket.a[i];
        }
        for(i = 0; i < 48; i++)
            inPacket.s.payload[i] = outPacket.s.payload[i + busAddress*48];


        if(inPacket.s.type == 131) {
            TLC59401_GetCalibration(inPacket.s.param1, outPacket.s.payload + busAddress*48);
        } else {
            uint32_t tempWork;

            for(i = 0; i < 10; i++)
                outPacket.s.payload[i + busAddress*48] = BUTTONS_Read(i);

            for(i = 0; i < 10; i++) {
                tempWork = ANALOG_get_voltage(analog_map[i]);

                tempWork = (tempWork*2753+2066808) >> 16;
                outPacket.s.payload[i + 10 + busAddress*48] = tempWork;
            }


            if(busAddress == 0)
                for(i = 0; i < 6; i++)
                    outPacket.s.payload[i + 20 + busAddress*48] = MACaddr[i];
            if(busAddress == 3) {
                if( (LocalTime - FanLastIrq) > TICKS_PER_MS*1000 )
                    FanCapture = 0xFFFF;
                for(i = 0; i < 4; i++)
                    outPacket.s.payload[i + 20 + busAddress*48] = (FanCapture >> (24-8*i)) & 0xFF;
            }

            tempWork = LocalTime;
            for(i = 0; i < 4; i++)
                outPacket.s.payload[i + 32 + busAddress*48] = (tempWork >> (24-8*i)) & 0xFF;
        }


        for(i = 0; i < sizeof(ledPacket_type); i++) {
            while( USART_GetFlagStatus(USART1,USART_FLAG_TXE) == RESET );
            USART_SendData(USART1, outPacket.a[i]);
            TXcount++;
        }
        if(outPacket.s.type != 128) {
            fan_pwm = unpack12bit(inPacket.ua+1, 0);
            if(busAddress == 3)
                fan_set_duty(fan_pwm);
            led_pwm = unpack12bit(inPacket.ua+1, 1);
        }


        switch(inPacket.s.type) {
            case 136:
                for(i = 0; i < TLC59401_CHANNELS; i++) {
                    TLC59401_Set8bitCalValue( i, inPacket.s.payload[i] );
                }
                TLC59401_Send();
                break;
            case 130:

                TLC59401_SetPacket(inPacket.s.payload);
                TLC59401_Send();
                break;
            case 134:

                for(i = 0; i < 32; i++)
                    TLC59401_SetDotCorrection( i, unpack12bit(inPacket.s.payload,i) );
                TLC59401_SendDotCorrection();
                break;
            case 135:
                for(i = 0; i < TLC59401_CHANNELS; i++) {
                    TLC59401_SetValue( i, ((uint16_t)inPacket.s.payload[i]) << 4 );
                }
                TLC59401_Send();
                break;
            case 128:
                TLC59401_SetCalibration(inPacket.s.param1, inPacket.s.payload);
                break;
            case 132:
                for(i = 0; i < 32; i++)
                    TLC59401_SetDotCorrection( i, unpack12bit(inPacket.s.payload,i) );
                TLC59401_SendDotCorrection();
                break;
            case 133:
                TLC59401_SetDotCorrectionPacket(inPacket.s.payload);
                TLC59401_SendDotCorrection();
                break;
            case 131:

                break;
            case 129:
                {
                    uint32_t *inBuf = (uint32_t *)inPacket.s.payload;
                    if(inBuf[0] == 0x816A4EB2) {
                        Delay(100*TICKS_PER_MS);
                        NVIC_SystemReset();
                    }
                }
                break;
            default:
                break;
        }
    }
}
