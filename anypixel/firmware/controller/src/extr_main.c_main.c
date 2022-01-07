
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct pbuf {scalar_t__ payload; } ;
struct TYPE_5__ {int payload; int type; } ;
struct TYPE_7__ {int a; TYPE_1__ s; } ;
typedef TYPE_3__ ledPacket_type ;
struct TYPE_6__ {int param1; int payload; void* type; } ;
struct TYPE_8__ {int a; TYPE_2__ s; } ;


 scalar_t__ BL_MODE_INACTIVE ;
 int BUTTONS_Config () ;
 int BUTTONS_Read_All () ;
 int CONFIG_pins (int ,int ) ;
 int DEBUGPIN_NUM ;
 int DEBUGPIN_TGL (int) ;
 int Delay (int) ;
 int ETH_BSP_Config () ;
 scalar_t__ ETH_CheckFrameReceived () ;
 int IP4_ADDR (int *,int ,int ,int ,int) ;
 int IP_ADDR0 ;
 int IP_ADDR1 ;
 int IP_ADDR2 ;
 int IP_lastOctet ;
 scalar_t__ LocalTime ;
 int LwIP_Init () ;
 int LwIP_Periodic_Handle (scalar_t__) ;
 int LwIP_Pkt_Handle () ;
 int NVIC_PriorityGroupConfig (int ) ;
 int NVIC_PriorityGroup_4 ;
 size_t PANEL_NE ;
 size_t PANEL_NW ;
 size_t PANEL_SE ;
 size_t PANEL_SW ;
 int PBUF_RAM ;
 int PBUF_TRANSPORT ;
 int PIN_Config () ;
 int PIN_Low (int ,int ) ;
 int PIN_Num (int ,int ,int ) ;
 int PIN_State (int ,int ) ;
 int PKT_TYPE_DOTCORRECT_PACK12 ;
 void* PKT_TYPE_GSVALS ;
 void* PKT_TYPE_SET_LOOKUP ;
 int POWER_ROW ;
 int PWRCTRL_NUM_PINS ;
 int PWR_CTRL_AC_0 ;
 int PWR_CTRL_AC_1 ;
 int PWR_MON_0_0 ;
 int PWR_MON_0_1 ;
 int PWR_MON_0_2 ;
 int PWR_MON_1_0 ;
 int PWR_MON_1_1 ;
 int PWR_MON_1_2 ;
 int PWR_MON_AC_0 ;
 int PWR_MON_AC_1 ;
 int UART_Config (int *) ;
 int UART_SendBytes (int *,int ,int) ;
 int USART_NE ;
 int USART_NW ;
 int USART_SE ;
 int USART_SW ;
 scalar_t__ bootloaderMode ;
 int buttonpacket ;
 int calcMedian (int ) ;
 int * fan_tach ;
 int global_column ;
 int global_pcb ;
 int global_row ;
 int handle_feedback (int ,size_t) ;
 scalar_t__ lastButtonPacketTime ;
 scalar_t__ lastPacketTime ;
 scalar_t__ lastStatusPacketTime ;
 scalar_t__ lastUDPReceivePacketTime ;
 TYPE_4__* ledpackets ;
 int mac_last_octet ;
 scalar_t__ maxPacketDelay ;
 int memcpy (scalar_t__,int ,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ minButtonPacketDelay ;
 scalar_t__ minPacketDelay ;
 scalar_t__ minStatusPacketDelay ;
 int pack12bit (int ,int ,int) ;
 int * panelLEDmap ;
 int panel_avg_temp ;
 struct pbuf* pbuf_alloc (int ,int,int ) ;
 int pbuf_free (struct pbuf*) ;
 int pins_debug ;
 int pins_powerctrl ;
 int pow (float,double) ;
 int printf (char*,...) ;
 int sendLEDpackets () ;
 int serialNum ;
 int temperatures ;
 int test_modes () ;
 int udp_dest ;
 int udp_recv_init () ;
 int udp_sendto (int ,struct pbuf*,int *,int) ;
 int uptimes ;
 int * usarts ;

int main(void)
{






    int i;

    struct pbuf *p;

    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);


    printf("about to start ethernet config\n");
    ETH_BSP_Config();


    BUTTONS_Config();
    PIN_Config();
    CONFIG_pins(pins_powerctrl, PWRCTRL_NUM_PINS);
    PIN_Num(pins_debug, 0, DEBUGPIN_NUM);

    PIN_Low(pins_powerctrl, PWR_CTRL_AC_0);
    PIN_Low(pins_powerctrl, PWR_CTRL_AC_1);

    Delay(10);
    i = BUTTONS_Read_All();



    global_row = (i >> 4) & 0xF;
    global_column = i & 0xF;
    IP_lastOctet = 20+global_row*10+global_column;
    mac_last_octet = 20+global_row*10+global_column;
    printf("IP: 192.168.0.%d", IP_lastOctet);

    IP4_ADDR(&udp_dest, IP_ADDR0, IP_ADDR1, IP_ADDR2, 10);


    LwIP_Init();


    udp_recv_init();

    if(global_row != POWER_ROW) {

        UART_Config(&usarts[0]);
        UART_Config(&usarts[1]);
        UART_Config(&usarts[2]);
        UART_Config(&usarts[3]);

        Delay(10);





        Delay(7000);


        int dotval = 58;
        while(dotval <= 63) {
            Delay(50);

            ledPacket_type pkt;
            memset(pkt.a, 0, sizeof(ledPacket_type));
            pkt.s.type = PKT_TYPE_DOTCORRECT_PACK12;
            for(i = 0; i < 49; i++) {
                pack12bit(pkt.s.payload, panelLEDmap[i*3+1], dotval);




                    pack12bit(pkt.s.payload, panelLEDmap[i*3 ], dotval/2);
                    pack12bit(pkt.s.payload, panelLEDmap[i*3+2], dotval/2);

            }
            UART_SendBytes(&usarts[0], pkt.a, sizeof(ledPacket_type));
            UART_SendBytes(&usarts[1], pkt.a, sizeof(ledPacket_type));
            UART_SendBytes(&usarts[2], pkt.a, sizeof(ledPacket_type));
            UART_SendBytes(&usarts[3], pkt.a, sizeof(ledPacket_type));
            Delay(50);
            ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
            for(i = 0; i <7*3; i++)
                pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 800);
            for(; i <49*3; i++)
                pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
            UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            dotval++;
            Delay(30);
        }

        {
            int j;
            float value;
            uint16_t iValue;
            ledpackets[PANEL_NW].s.type = PKT_TYPE_SET_LOOKUP;
            for(i = 0; i < 65; i++) {
                value = 4000*pow( (float)i/65.0, 2.2);
                iValue = ((uint16_t)value) & 0xFFF;
                for(j = 0; j < 49*3; j++) {
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[j], iValue);
                }
                ledpackets[PANEL_NW].s.param1 = i;
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(30);
            }
        }

        ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
        for(i = 0; i <49*3; i++) {
            pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
        }
        UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
        UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
        UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
        UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));


        ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
        for(i = 0; i <49*3+1; i++) {
            if(i < 49*3)
                pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 800);
            if(i > 0)
                pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i-1], 0);
            UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));

            Delay(10);
        }






    }


    while(1) {
        if (ETH_CheckFrameReceived()) {

            LwIP_Pkt_Handle();
        }


        if(global_row != POWER_ROW && LocalTime - lastPacketTime >= maxPacketDelay && bootloaderMode == BL_MODE_INACTIVE) {
            sendLEDpackets();
            DEBUGPIN_TGL(8);
        }

        if(global_row == POWER_ROW) {

            if(LocalTime-lastStatusPacketTime >= minStatusPacketDelay) {
                lastStatusPacketTime = LocalTime;
                p = pbuf_alloc(PBUF_TRANSPORT, 4+6+2+2, PBUF_RAM);
                i = 0;
                ((uint8_t*)p->payload)[i++] = 0x22;
                ((uint8_t*)p->payload)[i++] = 0x0;
                ((uint8_t*)p->payload)[i++] = 0x0;
                ((uint8_t*)p->payload)[i++] = 0x0;
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_MON_0_0);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_MON_0_1);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_MON_0_2);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_MON_1_0);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_MON_1_1);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_MON_1_2);
                ((uint8_t*)p->payload)[i++] = !PIN_State(pins_powerctrl, PWR_MON_AC_0);
                ((uint8_t*)p->payload)[i++] = !PIN_State(pins_powerctrl, PWR_MON_AC_1);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_CTRL_AC_0);
                ((uint8_t*)p->payload)[i++] = PIN_State(pins_powerctrl, PWR_CTRL_AC_1);
                udp_sendto(global_pcb, p, &udp_dest, 27482);

                pbuf_free(p);
            }
        } else {



            if(LocalTime-lastButtonPacketTime >= minButtonPacketDelay && bootloaderMode == BL_MODE_INACTIVE) {
                lastButtonPacketTime = LocalTime;
                DEBUGPIN_TGL(7);
                p = pbuf_alloc(PBUF_TRANSPORT, 29, PBUF_RAM);
                memcpy(p->payload, buttonpacket, 29);
                udp_sendto(global_pcb, p, &udp_dest, 27482);

                pbuf_free(p);
            }

            if(LocalTime-lastStatusPacketTime >= minStatusPacketDelay && bootloaderMode == BL_MODE_INACTIVE) {
                lastStatusPacketTime = LocalTime;
                p = pbuf_alloc(PBUF_TRANSPORT, 4+196+4+4*6+4*4+4, PBUF_RAM);
                ((uint8_t*)p->payload)[0] = 0x21;
                memcpy(p->payload+4, temperatures, 196);
                ((uint8_t*)(p->payload))[4+196+0] = calcMedian(fan_tach[0]);
                ((uint8_t*)(p->payload))[4+196+1] = calcMedian(fan_tach[1]);
                ((uint8_t*)(p->payload))[4+196+2] = calcMedian(fan_tach[2]);
                ((uint8_t*)(p->payload))[4+196+3] = calcMedian(fan_tach[3]);
                memcpy(p->payload+4+196+4, serialNum, 4*6);
                memcpy(p->payload+4+196+4+4*6, uptimes, 4*4);
                memcpy(p->payload+4+196+4+4*6+4*4, panel_avg_temp, 4);
                udp_sendto(global_pcb, p, &udp_dest, 27482);

                pbuf_free(p);
            }
        }

        LwIP_Periodic_Handle(LocalTime);


        if( (LocalTime - lastUDPReceivePacketTime) > 5000 ) {

            ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
            for(i = 0; i <49*3; i++) {
                pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
            }
            if( (global_row != POWER_ROW) && (LocalTime - lastPacketTime >= minPacketDelay) ) {
                handle_feedback(USART_NW, PANEL_NW);
                handle_feedback(USART_SW, PANEL_SW);
                handle_feedback(USART_SE, PANEL_SE);
                handle_feedback(USART_NE, PANEL_NE);
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                lastPacketTime = LocalTime;
            }
        }
    }
}
