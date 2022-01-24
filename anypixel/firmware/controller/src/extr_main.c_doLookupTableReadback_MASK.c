#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct pbuf {scalar_t__ payload; } ;
typedef  int /*<<< orphan*/  ledPacket_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  LocalTime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANEL_NE ; 
 int /*<<< orphan*/  PANEL_NW ; 
 int /*<<< orphan*/  PANEL_SE ; 
 int /*<<< orphan*/  PANEL_SW ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_TRANSPORT ; 
 scalar_t__ POWER_ROW ; 
 int /*<<< orphan*/  USART_NE ; 
 int /*<<< orphan*/  USART_NW ; 
 int /*<<< orphan*/  USART_SE ; 
 int /*<<< orphan*/  USART_SW ; 
 int /*<<< orphan*/  global_pcb ; 
 scalar_t__ global_row ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pbuf* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*) ; 
 int /*<<< orphan*/  udp_dest ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct pbuf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6() {
    int i, failcount;
    ledPacket_type pkt;
    struct pbuf *p;
    bool result = false;

    if(global_row == POWER_ROW)
        return;

    p = FUNC3(PBUF_TRANSPORT, 196*3*3/2+4, PBUF_RAM);

    failcount = 0;
    i = 0;
    do {
        result = false;
        result |= FUNC2(&pkt, p->payload+4, i, USART_NW, PANEL_NW);
        result |= FUNC2(&pkt, p->payload+4, i, USART_NE, PANEL_NE);
        result |= FUNC2(&pkt, p->payload+4, i, USART_SW, PANEL_SW);
        result |= FUNC2(&pkt, p->payload+4, i, USART_SE, PANEL_SE);
        if(result != false) { // only continue if at least one succeeded
            ((uint8_t*)p->payload)[0] = 0x23;
            ((uint8_t*)p->payload)[1] = i;
            if( FUNC5(global_pcb, p, &udp_dest, 27482) != ERR_OK ) {
                FUNC0(100);
                FUNC1(LocalTime);
                continue;
            }
            FUNC0(20);
            FUNC1(LocalTime);
            i++;
            failcount = 0;
        } else {
            if(failcount++ > 4)
                break;
        }
    } while(i < 65);

    /* free the pbuf */
    FUNC4(p);
}