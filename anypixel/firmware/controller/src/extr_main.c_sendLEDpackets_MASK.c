#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ledPacket_type ;
struct TYPE_2__ {int /*<<< orphan*/  a; } ;

/* Variables and functions */
 int /*<<< orphan*/  LocalTime ; 
 size_t PANEL_NE ; 
 size_t PANEL_NW ; 
 size_t PANEL_SE ; 
 size_t PANEL_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USART_NE ; 
 int /*<<< orphan*/  USART_NW ; 
 int /*<<< orphan*/  USART_SE ; 
 int /*<<< orphan*/  USART_SW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  lastPacketTime ; 
 TYPE_1__* ledpackets ; 
 int /*<<< orphan*/ * usarts ; 

void FUNC2(void) {
    // read before writing so there was enough time to get things back
    FUNC1(USART_NW, PANEL_NW);
    FUNC1(USART_SW, PANEL_SW);
    FUNC1(USART_SE, PANEL_SE);
    FUNC1(USART_NE, PANEL_NE);

    FUNC0(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledPacket_type));
    FUNC0(&usarts[2], ledpackets[PANEL_SW].a, sizeof(ledPacket_type));
    FUNC0(&usarts[1], ledpackets[PANEL_SE].a, sizeof(ledPacket_type));
    FUNC0(&usarts[0], ledpackets[PANEL_NE].a, sizeof(ledPacket_type));
    lastPacketTime = LocalTime;
}