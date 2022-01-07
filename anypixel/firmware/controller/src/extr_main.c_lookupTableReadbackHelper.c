
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int param1; int payload; int type; } ;
struct TYPE_5__ {char* a; TYPE_1__ s; } ;
typedef TYPE_2__ ledPacket_type ;


 int Delay (int) ;
 int LED_PACKET_LEN ;




 int PKT_TYPE_GET_LOOKUP ;
 int UART_RX_frame_available (int *) ;
 int UART_RX_read (int *,char*,int) ;
 int UART_SendBytes (int *,char*,int) ;
 int pack12bit (int *,int,int ) ;
 int * panelLEDmap ;
 int unpack12bit (int ,int ) ;
 int * usarts ;

__attribute__((used)) static bool lookupTableReadbackHelper(ledPacket_type *outpkt, uint8_t *udpPayload, int index, int usart, int panel) {
    int fail_count = 0;
    int row_offset, col_offset;
    int r,c, len;
    ledPacket_type inpkt;

    outpkt->s.type = PKT_TYPE_GET_LOOKUP;
    outpkt->s.param1 = index;

    switch(panel) {
        case 130:
            row_offset = 0; col_offset = 0; break;
        case 131:
            row_offset = 0; col_offset = 7; break;
        case 128:
            row_offset = 7; col_offset = 0; break;
        case 129:
            row_offset = 7; col_offset = 7; break;
    }

    while(1) {
        UART_SendBytes(&usarts[usart], outpkt->a, sizeof(ledPacket_type));
        Delay(20);
        len = UART_RX_frame_available(&usarts[usart]);
        if(len == LED_PACKET_LEN) {
            UART_RX_read(&usarts[usart], inpkt.a, len);
            break;
        } else {
            if(len > 0) {
                char buf[512];
                if(len > 512)
                    len = 512;
                UART_RX_read(&usarts[usart], buf, len);
            }
            if(fail_count++ > 3)
                return 0;
        }
    }

    for(r = 0; r < 7; r++) {
        for(c = 0; c < 7; c++) {
            pack12bit(udpPayload, ((r+row_offset)*14+(c+col_offset))*3, unpack12bit(inpkt.s.payload, panelLEDmap[(r*7+c)*3]) );
            pack12bit(udpPayload, ((r+row_offset)*14+(c+col_offset))*3+1, unpack12bit(inpkt.s.payload, panelLEDmap[(r*7+c)*3+1]) );
            pack12bit(udpPayload, ((r+row_offset)*14+(c+col_offset))*3+2, unpack12bit(inpkt.s.payload, panelLEDmap[(r*7+c)*3+2]) );
        }
    }
    return 1;
}
