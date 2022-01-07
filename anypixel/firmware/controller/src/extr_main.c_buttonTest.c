
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int payload; } ;
struct TYPE_4__ {int a; TYPE_1__ s; } ;


 int Delay (int) ;
 size_t PANEL_NE ;
 size_t PANEL_NW ;
 size_t PANEL_SE ;
 size_t PANEL_SW ;
 int UART_SendBytes (int *,int ,int) ;
 int USART_NE ;
 int USART_NW ;
 int USART_SE ;
 int USART_SW ;
 scalar_t__ globalGetButtonState (int,size_t) ;
 int handle_feedback (int ,size_t) ;
 TYPE_2__* ledpackets ;
 int pack12bit (int ,int ,int) ;
 int * panelLEDmap ;
 int * usarts ;

void buttonTest(int intensity) {
    int i;

    handle_feedback(USART_NW, PANEL_NW);
    handle_feedback(USART_SW, PANEL_SW);
    handle_feedback(USART_SE, PANEL_SE);
    handle_feedback(USART_NE, PANEL_NE);
    for(i = 0; i < 49; i++) {
        if( globalGetButtonState(i, PANEL_NE) ) {
            pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3], intensity);
            pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+1], intensity);
            pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+2], 0);
        } else {

            pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+1], 0);
            pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+2], 0);
        }
    }
    UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
    Delay(10);
}
