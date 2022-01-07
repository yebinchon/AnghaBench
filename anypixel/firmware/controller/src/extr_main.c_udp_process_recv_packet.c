
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u16_t ;
struct udp_pcb {int dummy; } ;
struct pbuf {int* payload; } ;
struct ip_addr {int dummy; } ;
struct TYPE_5__ {int type; scalar_t__ payload; } ;
struct TYPE_7__ {int a; TYPE_1__ s; } ;
typedef TYPE_3__ ledPacket_type ;
struct TYPE_6__ {int type; int param1; } ;
struct TYPE_8__ {TYPE_2__ s; } ;


 int BL_MODE_ACTIVE ;
 int BL_MODE_WAITING ;
 int DEBUGPIN_CLR (int ) ;
 int DEBUGPIN_SET (int ) ;
 int Delay (int) ;
 scalar_t__ LocalTime ;
 int NVIC_SystemReset () ;
 int PIN_High (int ,int ) ;
 int PIN_Low (int ,int ) ;
 scalar_t__ POWER_ROW ;
 int PWR_CTRL_AC_0 ;
 int PWR_CTRL_AC_1 ;
 int UART_SendBytes (int *,int ,int) ;
 int bootloaderMode ;
 int doLookupTableReadback () ;
 int* fan_duty ;
 int* fan_intercept ;
 int* fan_min ;
 int* fan_mode ;
 int* fan_setpoint ;
 int* fan_slope ;
 int globalSet (int,int) ;
 int globalSet8bit (int,int) ;
 scalar_t__ global_row ;
 scalar_t__ lastPacketTime ;
 scalar_t__ lastUDPReceivePacketTime ;
 TYPE_4__* ledpackets ;
 scalar_t__ minPacketDelay ;
 int pbuf_free (struct pbuf*) ;
 int pins_powerctrl ;
 int sendLEDpackets () ;
 int unpack12bit (int*,int) ;
 int unpack6bit (int*,int) ;
 int * usarts ;

void udp_process_recv_packet(void *arg, struct udp_pcb *pcb, struct pbuf *p, struct ip_addr *addr, u16_t port)
{
    int i, pixValue;
    static int pktCount = 0;
    uint8_t workType;
    uint8_t workParam;

    DEBUGPIN_SET(0);

    pktCount++;

    if (p != ((void*)0)) {
        lastUDPReceivePacketTime = LocalTime;
        workType = ((uint8_t*)p->payload)[0];
        switch( workType ) {
            case 139:
                for(i = 0; i < 196*3; i++) {
                    pixValue = ((uint8_t*)p->payload)[16+i];
                    globalSet8bit(i, pixValue);
                }
                break;
            case 131:
                for(i = 0; i < 196*3; i++) {
                    pixValue = unpack12bit(p->payload+16, i);
                    globalSet(i, pixValue);
                }
                break;
            case 136:
                for(i = 0; i < 196*3; i++) {
                    pixValue = unpack12bit(p->payload+16, i);
                    globalSet(i, pixValue);
                }
                break;
            case 138:
                for(i = 0; i < 196*3; i++) {
                    pixValue = ((uint8_t*)p->payload)[16+i];
                    globalSet8bit(i, pixValue);
                }
                break;
            case 128:
                for(i = 0; i < 196*3; i++) {
                    pixValue = unpack12bit(p->payload+16, i);
                    globalSet(i, pixValue);
                }
                workParam = ((uint8_t*)p->payload)[6];
                break;
            case 134:
                for(i = 0; i < 196*3; i++) {
                    pixValue = ((uint8_t*)p->payload)[16+i];
                    globalSet(i, pixValue);
                }
                workType = 136;
                break;
            case 135:
                for(i = 0; i < 196*3; i++) {
                    pixValue = unpack6bit(p->payload+16, i);
                    globalSet(i, pixValue);
                }
                workType = 136;
                break;
            case 132:
                doLookupTableReadback();
                pbuf_free(p);
                DEBUGPIN_CLR(0);
                return;
            case 133:
                {
                    uint8_t *pl = p->payload+16;
                    for(i = 0; i < 4; i++) {
                        fan_setpoint[i] = (pl[ i*2] << 8) | pl[ i*2+1];
                        fan_mode[i] = pl[ 8+i ];
                        fan_slope[i] = (pl[12+i*2] << 8) | pl[12+i*2+1];
                        fan_intercept[i] = (pl[20+i*2] << 8) | pl[20+i*2+1];
                        fan_min[i] = (pl[28+i*2] << 8) | pl[28+i*2+1];
                        if(fan_mode[i] == 0)
                            fan_duty[i] = fan_setpoint[i];
                    }
                }
                break;
            case 129:
                if(((uint8_t*)(p->payload+16))[0] != 0)
                    PIN_High(pins_powerctrl, PWR_CTRL_AC_0);
                else
                    PIN_Low(pins_powerctrl, PWR_CTRL_AC_0);

                if(((uint8_t*)(p->payload+16))[1] != 0)
                    PIN_High(pins_powerctrl, PWR_CTRL_AC_1);
                else
                    PIN_Low(pins_powerctrl, PWR_CTRL_AC_1);
                break;
            case 130:
                if( ((uint32_t*)(p->payload+16))[0] == 0x816A4EB2) {
                    if( ((uint8_t*)(p->payload+16))[4] & 0x0F) {
                        ledPacket_type outpkt;
                        outpkt.s.type = 130;
                        ((uint32_t*)outpkt.s.payload)[0] = 0x816A4EB2;
                        ((uint32_t*)outpkt.s.payload)[12] = 0x816A4EB2;
                        ((uint32_t*)outpkt.s.payload)[24] = 0x816A4EB2;
                        ((uint32_t*)outpkt.s.payload)[36] = 0x816A4EB2;
                        ((uint32_t*)outpkt.s.payload)[48] = 0x816A4EB2;
                        for(i = 0; i < 4; i++) {
                            if( ((uint8_t*)(p->payload+16))[4] & (0x01 << i)) {
                                UART_SendBytes(&usarts[i], outpkt.a, sizeof(ledPacket_type));
                            }
                        }
                    }
                    if( ((uint8_t*)(p->payload+16))[4] & 0x10) {
                        Delay(100);
                        NVIC_SystemReset();
                    }
                }
                break;
            case 137:
                if(bootloaderMode == BL_MODE_WAITING) {

                    bootloaderMode = BL_MODE_ACTIVE;
                }

            default:
                workType = 0;
                break;
        }


        for(i = 0; i < 4; i++) {
            ledpackets[i].s.type = workType;
            ledpackets[i].s.param1 = workParam;
        }


        if( (global_row != POWER_ROW) && (LocalTime - lastPacketTime >= minPacketDelay) )
            sendLEDpackets();


        pbuf_free(p);
    }
    DEBUGPIN_CLR(0);
}
