
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int type; int* payload; } ;
struct TYPE_4__ {char* a; TYPE_1__ s; } ;
typedef TYPE_2__ ledPacket_type ;


 int DEBUGPIN_CLR (int) ;
 int DEBUGPIN_SET (int) ;
 int LED_PACKET_LEN ;




 int UART_RX_frame_available (int *) ;
 int UART_RX_read (int *,char*,int) ;
 scalar_t__* fan_duty ;
 scalar_t__* fan_intercept ;
 scalar_t__* fan_min ;
 int* fan_mode ;
 int* fan_slope ;
 int** fan_tach ;
 int globalButtonSet (int,int,int) ;
 size_t* panelButtonMap ;
 int* panel_avg_temp ;
 int** serialNum ;
 int* temperatures ;
 int* uptimes ;
 int * usarts ;

void handle_feedback(int usart_idx, int panel_idx) {
    int i, r, c;
    int row_offset, col_offset;
    int workTemp, avgTemp;
    ledPacket_type inPkt;
    DEBUGPIN_SET(1);
    i = UART_RX_frame_available(&usarts[usart_idx]);

    switch(panel_idx) {
        case 130:
            row_offset = 0; col_offset = 0; break;
        case 131:
            row_offset = 0; col_offset = 7; break;
        case 128:
            row_offset = 7; col_offset = 0; break;
        case 129:
            row_offset = 7; col_offset = 7; break;
    }

    if(i == LED_PACKET_LEN) {
        UART_RX_read(&usarts[usart_idx], inPkt.a, i);
        avgTemp = 0;

        if(inPkt.s.type >= 0x20)
            return;

        for(r = 0; r < 7; r++) {
            for(c = 0; c < 7; c++) {

                globalButtonSet(7*r+c, inPkt.s.payload[ panelButtonMap[7*r+c] ], panel_idx);

                workTemp = inPkt.s.payload[ panelButtonMap[7*r+c] + 10 ];
                temperatures[14*(r+row_offset)+c+col_offset] = workTemp;
                avgTemp += workTemp;
            }
        }
        avgTemp /= 49;
        panel_avg_temp[panel_idx] = avgTemp;


        if(fan_mode[panel_idx] == 1)
            fan_duty[panel_idx] = ((fan_slope[panel_idx]*(avgTemp-80)) >> 8) + fan_intercept[panel_idx];
            if(fan_duty[panel_idx] < fan_min[panel_idx])
                fan_duty[panel_idx] = fan_min[panel_idx];


        uint32_t workVal = 0;
        for(i = 0; i < 4; i++) {
            workVal <<= 8;
            workVal |= inPkt.s.payload[48*3+20+i];
        }
        if(workVal == 65535)
            workVal = 0;
        else
            workVal = 360000/workVal;

        if(workVal == 0 || (workVal > 7 && workVal < 250)) {
            fan_tach[panel_idx][fan_tach[panel_idx][8]&0x07] = (uint8_t)workVal;
            fan_tach[panel_idx][8]++;
        }


        for(i = 0; i < 6; i++)
            serialNum[panel_idx][i] = inPkt.s.payload[20+i];


        uptimes[panel_idx] = 0;
        for(i = 0; i < 4; i++) {
            uptimes[panel_idx] <<= 8;
            uptimes[panel_idx] |= inPkt.s.payload[48*3+32+i];
        }
    } else {
        if(i > 0) {
            char buf[512];
            if(i > 512)
                i = 512;
            UART_RX_read(&usarts[usart_idx], buf, i);
        }
    }
    DEBUGPIN_CLR(1);
}
