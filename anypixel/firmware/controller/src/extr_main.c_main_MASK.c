#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct pbuf {scalar_t__ payload; } ;
struct TYPE_5__ {int /*<<< orphan*/  payload; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int /*<<< orphan*/  a; TYPE_1__ s; } ;
typedef  TYPE_3__ ledPacket_type ;
struct TYPE_6__ {int param1; int /*<<< orphan*/  payload; void* type; } ;
struct TYPE_8__ {int /*<<< orphan*/  a; TYPE_2__ s; } ;

/* Variables and functions */
 scalar_t__ BL_MODE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUGPIN_NUM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IP_ADDR0 ; 
 int /*<<< orphan*/  IP_ADDR1 ; 
 int /*<<< orphan*/  IP_ADDR2 ; 
 int IP_lastOctet ; 
 scalar_t__ LocalTime ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVIC_PriorityGroup_4 ; 
 size_t PANEL_NE ; 
 size_t PANEL_NW ; 
 size_t PANEL_SE ; 
 size_t PANEL_SW ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_TRANSPORT ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKT_TYPE_DOTCORRECT_PACK12 ; 
 void* PKT_TYPE_GSVALS ; 
 void* PKT_TYPE_SET_LOOKUP ; 
 int POWER_ROW ; 
 int /*<<< orphan*/  PWRCTRL_NUM_PINS ; 
 int /*<<< orphan*/  PWR_CTRL_AC_0 ; 
 int /*<<< orphan*/  PWR_CTRL_AC_1 ; 
 int /*<<< orphan*/  PWR_MON_0_0 ; 
 int /*<<< orphan*/  PWR_MON_0_1 ; 
 int /*<<< orphan*/  PWR_MON_0_2 ; 
 int /*<<< orphan*/  PWR_MON_1_0 ; 
 int /*<<< orphan*/  PWR_MON_1_1 ; 
 int /*<<< orphan*/  PWR_MON_1_2 ; 
 int /*<<< orphan*/  PWR_MON_AC_0 ; 
 int /*<<< orphan*/  PWR_MON_AC_1 ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USART_NE ; 
 int /*<<< orphan*/  USART_NW ; 
 int /*<<< orphan*/  USART_SE ; 
 int /*<<< orphan*/  USART_SW ; 
 scalar_t__ bootloaderMode ; 
 int /*<<< orphan*/  buttonpacket ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fan_tach ; 
 int global_column ; 
 int /*<<< orphan*/  global_pcb ; 
 int global_row ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ lastButtonPacketTime ; 
 scalar_t__ lastPacketTime ; 
 scalar_t__ lastStatusPacketTime ; 
 scalar_t__ lastUDPReceivePacketTime ; 
 TYPE_4__* ledpackets ; 
 int mac_last_octet ; 
 scalar_t__ maxPacketDelay ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ minButtonPacketDelay ; 
 scalar_t__ minPacketDelay ; 
 scalar_t__ minStatusPacketDelay ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * panelLEDmap ; 
 int /*<<< orphan*/  panel_avg_temp ; 
 struct pbuf* FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct pbuf*) ; 
 int /*<<< orphan*/  pins_debug ; 
 int /*<<< orphan*/  pins_powerctrl ; 
 int FUNC25 (float,double) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  serialNum ; 
 int /*<<< orphan*/  temperatures ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  udp_dest ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct pbuf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uptimes ; 
 int /*<<< orphan*/ * usarts ; 

int FUNC31(void)
{
  /*!< At this stage the microcontroller clock setting is already configured to
       168 MHz, this is done through SystemInit() function which is called from
       startup file (startup_stm32f4xx.s) before to branch to application main.
       To reconfigure the default setting of SystemInit() function, refer to
       system_stm32f4xx.c file
     */
    int i;

    struct pbuf *p;

    FUNC11(NVIC_PriorityGroup_4);

    /* configure ethernet (GPIOs, clocks, MAC, DMA) */
    FUNC26("about to start ethernet config\n");
    FUNC5();

    // Determine the IP address based on dip switch position
    FUNC0();
    FUNC12();
    FUNC2(pins_powerctrl, PWRCTRL_NUM_PINS);
    FUNC14(pins_debug, 0, DEBUGPIN_NUM);

    FUNC13(pins_powerctrl, PWR_CTRL_AC_0);
    FUNC13(pins_powerctrl, PWR_CTRL_AC_1);

    FUNC4(10);
    i = FUNC1();
    #ifdef TEST_MODES
        i = 2;
    #endif
    global_row = (i >> 4) & 0xF;
    global_column = i & 0xF;
    IP_lastOctet = 20+global_row*10+global_column;
    mac_last_octet = 20+global_row*10+global_column;
    FUNC26("IP: 192.168.0.%d", IP_lastOctet);

    FUNC7(&udp_dest, IP_ADDR0, IP_ADDR1, IP_ADDR2, 10);

    /* Initilaize the LwIP stack */
    FUNC8();

    // Initialize, bind, and setup callback for UDP
    FUNC29();

    if(global_row != POWER_ROW) {
        // this is a normal panel (not a power box)
        FUNC16(&usarts[0]);
        FUNC16(&usarts[1]);
        FUNC16(&usarts[2]);
        FUNC16(&usarts[3]);

        FUNC4(10);

        //startBootloader();
        //doBootloaderTest();

        // Wait for initialization of LED board firmware and debug display
        FUNC4(7000);

        // run through sequence of setting dot correction
        int dotval = 58;
        while(dotval <= 63) {
            FUNC4(50);
            // set dot correction
            ledPacket_type pkt;
            FUNC21(pkt.a, 0, sizeof(ledPacket_type));
            pkt.s.type = PKT_TYPE_DOTCORRECT_PACK12;
            for(i = 0; i < 49; i++) {
                FUNC22(pkt.s.payload, panelLEDmap[i*3+1], dotval);
                #ifdef TEST_MODES
                    pack12bit(pkt.s.payload, panelLEDmap[i*3], dotval*12/16);
                    pack12bit(pkt.s.payload, panelLEDmap[i*3+2], dotval*12/16);
                #else
                    FUNC22(pkt.s.payload, panelLEDmap[i*3  ], dotval/2);
                    FUNC22(pkt.s.payload, panelLEDmap[i*3+2], dotval/2);
                #endif
            }
            FUNC17(&usarts[0], pkt.a, sizeof(ledPacket_type));
            FUNC17(&usarts[1], pkt.a, sizeof(ledPacket_type));
            FUNC17(&usarts[2], pkt.a, sizeof(ledPacket_type));
            FUNC17(&usarts[3], pkt.a, sizeof(ledPacket_type));
            FUNC4(50);
            ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
            for(i = 0; i <7*3; i++)
                FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 800);
            for(; i <49*3; i++)
                FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
            FUNC17(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            FUNC17(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            FUNC17(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            FUNC17(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            dotval++;
            FUNC4(30);
        }
        // set calibration to a 2.2 gamma curve
        {
            int j;
            float value;
            uint16_t iValue;
            ledpackets[PANEL_NW].s.type = PKT_TYPE_SET_LOOKUP;
            for(i = 0; i < 65; i++) {
                value = 4000*FUNC25( (float)i/65.0, 2.2);
                iValue = ((uint16_t)value) & 0xFFF;
                for(j = 0; j < 49*3; j++) {
                    FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[j], iValue);
                }
                ledpackets[PANEL_NW].s.param1 = i;
                FUNC17(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC17(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC17(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC17(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC4(30);
            }
        }
        // turn off all channels
        ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
        for(i = 0; i <49*3; i++) {
            FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
        }
        FUNC17(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
        FUNC17(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
        FUNC17(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
        FUNC17(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));

        // Startup sequence that lights all the LEDs one at a time
        ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
        for(i = 0; i <49*3+1; i++) {
            if(i < 49*3)
                FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 800);
            if(i > 0)
                FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[i-1], 0);
            FUNC17(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            FUNC17(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            FUNC17(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
            FUNC17(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));

            FUNC4(10);
        }

        #ifdef TEST_MODES
            test_modes();
        #endif

        //buttonTest();
    }

    // Normal execution infinite while loop
    while(1) {
        if (FUNC6()) {
            /* process received ethernet packet*/
            FUNC10();
        }

        // for normal panels send packet to LED boards if overdue and not in bootloader mode
        if(global_row != POWER_ROW && LocalTime - lastPacketTime >= maxPacketDelay && bootloaderMode == BL_MODE_INACTIVE) {
            FUNC27();
            FUNC3(8);
        }

        if(global_row == POWER_ROW) {
            // This is a power box controller
            if(LocalTime-lastStatusPacketTime >= minStatusPacketDelay) {
                lastStatusPacketTime = LocalTime;
                p = FUNC23(PBUF_TRANSPORT, 4+6+2+2, PBUF_RAM);
                i = 0;
                ((uint8_t*)p->payload)[i++] = 0x22;
                ((uint8_t*)p->payload)[i++] = 0x0;
                ((uint8_t*)p->payload)[i++] = 0x0;
                ((uint8_t*)p->payload)[i++] = 0x0;
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_MON_0_0);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_MON_0_1);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_MON_0_2);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_MON_1_0);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_MON_1_1);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_MON_1_2);
                ((uint8_t*)p->payload)[i++] = !FUNC15(pins_powerctrl, PWR_MON_AC_0);
                ((uint8_t*)p->payload)[i++] = !FUNC15(pins_powerctrl, PWR_MON_AC_1);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_CTRL_AC_0);
                ((uint8_t*)p->payload)[i++] = FUNC15(pins_powerctrl, PWR_CTRL_AC_1);
                FUNC30(global_pcb, p, &udp_dest, 27482);
                /* free the pbuf */
                FUNC24(p);
            }
        } else {
            // This is an LED panel controller

            // build and send button data packet at a fixed rate
            if(LocalTime-lastButtonPacketTime >= minButtonPacketDelay && bootloaderMode == BL_MODE_INACTIVE) {
                lastButtonPacketTime = LocalTime;
                FUNC3(7);
                p = FUNC23(PBUF_TRANSPORT, 29, PBUF_RAM);
                FUNC20(p->payload, buttonpacket, 29);
                FUNC30(global_pcb, p, &udp_dest, 27482);
                /* free the pbuf */
                FUNC24(p);
            }
            // build and send button data packet at a fixed rate
            if(LocalTime-lastStatusPacketTime >= minStatusPacketDelay && bootloaderMode == BL_MODE_INACTIVE) {
                lastStatusPacketTime = LocalTime;
                p = FUNC23(PBUF_TRANSPORT, 4+196+4+4*6+4*4+4, PBUF_RAM);
                ((uint8_t*)p->payload)[0] = 0x21;
                FUNC20(p->payload+4, temperatures, 196);
                ((uint8_t*)(p->payload))[4+196+0] = FUNC18(fan_tach[0]);
                ((uint8_t*)(p->payload))[4+196+1] = FUNC18(fan_tach[1]);
                ((uint8_t*)(p->payload))[4+196+2] = FUNC18(fan_tach[2]);
                ((uint8_t*)(p->payload))[4+196+3] = FUNC18(fan_tach[3]);
                FUNC20(p->payload+4+196+4, serialNum, 4*6);
                FUNC20(p->payload+4+196+4+4*6, uptimes, 4*4);
                FUNC20(p->payload+4+196+4+4*6+4*4, panel_avg_temp, 4);
                FUNC30(global_pcb, p, &udp_dest, 27482);
                /* free the pbuf */
                FUNC24(p);
            }
        }

        FUNC9(LocalTime);

        // Turn off the display if we don't receive anything for more than 5 seconds
        if( (LocalTime - lastUDPReceivePacketTime) > 5000 ) {
            // turn off all channels
            ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
            for(i = 0; i <49*3; i++) {
                FUNC22(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
            }
            if( (global_row != POWER_ROW) && (LocalTime - lastPacketTime >= minPacketDelay) ) {
                FUNC19(USART_NW, PANEL_NW);
                FUNC19(USART_SW, PANEL_SW);
                FUNC19(USART_SE, PANEL_SE);
                FUNC19(USART_NE, PANEL_NE);
                FUNC17(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC17(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC17(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC17(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                lastPacketTime = LocalTime;
            }
        }
    }
}