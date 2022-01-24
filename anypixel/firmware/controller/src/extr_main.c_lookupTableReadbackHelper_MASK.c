#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int param1; int /*<<< orphan*/  payload; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {char* a; TYPE_1__ s; } ;
typedef  TYPE_2__ ledPacket_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LED_PACKET_LEN ; 
#define  PANEL_NE 131 
#define  PANEL_NW 130 
#define  PANEL_SE 129 
#define  PANEL_SW 128 
 int /*<<< orphan*/  PKT_TYPE_GET_LOOKUP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * panelLEDmap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * usarts ; 

__attribute__((used)) static bool FUNC6(ledPacket_type *outpkt, uint8_t *udpPayload, int index, int usart, int panel) {
    int fail_count = 0;
    int row_offset, col_offset;
    int r,c, len;
    ledPacket_type inpkt;

    outpkt->s.type = PKT_TYPE_GET_LOOKUP;
    outpkt->s.param1 = index;

    switch(panel) {
        case PANEL_NW:
            row_offset = 0; col_offset = 0; break;
        case PANEL_NE:
            row_offset = 0; col_offset = 7; break;
        case PANEL_SW:
            row_offset = 7; col_offset = 0; break;
        case PANEL_SE:
            row_offset = 7; col_offset = 7; break;
    }

    while(1) {
        FUNC3(&usarts[usart], outpkt->a, sizeof(ledPacket_type));
        FUNC0(20);
        len = FUNC1(&usarts[usart]);
        if(len == LED_PACKET_LEN) { // got valid packet length so process
            FUNC2(&usarts[usart], inpkt.a, len);
            break;
        } else {
            if(len > 0) { // got unexpected length packet so flush buffer
                char buf[512];
                if(len > 512)
                    len = 512;
                FUNC2(&usarts[usart], buf, len);
            }
            if(fail_count++ > 3)
                return false;
        }
    }
    // get inpkt contents moved to udpPayload
    for(r = 0; r < 7; r++) {
        for(c = 0; c < 7; c++) {
            FUNC4(udpPayload, ((r+row_offset)*14+(c+col_offset))*3, FUNC5(inpkt.s.payload, panelLEDmap[(r*7+c)*3]) );
            FUNC4(udpPayload, ((r+row_offset)*14+(c+col_offset))*3+1, FUNC5(inpkt.s.payload, panelLEDmap[(r*7+c)*3+1]) );
            FUNC4(udpPayload, ((r+row_offset)*14+(c+col_offset))*3+2, FUNC5(inpkt.s.payload, panelLEDmap[(r*7+c)*3+2]) );
        }
    }
    return true;
}