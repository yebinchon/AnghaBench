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
struct TYPE_2__ {int /*<<< orphan*/  a; } ;

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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* ledpackets ; 
 int /*<<< orphan*/ * usarts ; 

__attribute__((used)) static void FUNC3() {
    FUNC1(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC1(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC1(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC1(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    FUNC0(1000);
    FUNC2(USART_NW, PANEL_NW);
    FUNC2(USART_SW, PANEL_SW);
    FUNC2(USART_SE, PANEL_SE);
    FUNC2(USART_NE, PANEL_NE);
}