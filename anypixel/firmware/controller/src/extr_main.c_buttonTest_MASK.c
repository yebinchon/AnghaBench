#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  payload; } ;
struct TYPE_4__ {int /*<<< orphan*/  a; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t PANEL_NE ; 
 size_t PANEL_NW ; 
 size_t PANEL_SE ; 
 size_t PANEL_SW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USART_NE ; 
 int /*<<< orphan*/  USART_NW ; 
 int /*<<< orphan*/  USART_SE ; 
 int /*<<< orphan*/  USART_SW ; 
 scalar_t__ FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* ledpackets ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * panelLEDmap ; 
 int /*<<< orphan*/ * usarts ; 

void FUNC5(int intensity) {
    int i;

    FUNC3(USART_NW, PANEL_NW);
    FUNC3(USART_SW, PANEL_SW);
    FUNC3(USART_SE, PANEL_SE);
    FUNC3(USART_NE, PANEL_NE);
    for(i = 0; i < 49; i++) {
        if( FUNC2(i, PANEL_NE) ) {
            FUNC4(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3], intensity);
            FUNC4(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+1], intensity);
            FUNC4(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+2], 0);
        } else {
            //pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3], intensity);
            FUNC4(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+1], 0);
            FUNC4(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+2], 0);
        }
    }
    FUNC1(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC1(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC1(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC1(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC0(10);
}