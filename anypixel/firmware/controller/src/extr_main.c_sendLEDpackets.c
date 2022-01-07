
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ledPacket_type ;
struct TYPE_2__ {int a; } ;


 int LocalTime ;
 size_t PANEL_NE ;
 size_t PANEL_NW ;
 size_t PANEL_SE ;
 size_t PANEL_SW ;
 int UART_SendBytes (int *,int ,int) ;
 int USART_NE ;
 int USART_NW ;
 int USART_SE ;
 int USART_SW ;
 int handle_feedback (int ,size_t) ;
 int lastPacketTime ;
 TYPE_1__* ledpackets ;
 int * usarts ;

void sendLEDpackets(void) {

    handle_feedback(USART_NW, PANEL_NW);
    handle_feedback(USART_SW, PANEL_SW);
    handle_feedback(USART_SE, PANEL_SE);
    handle_feedback(USART_NE, PANEL_NE);

    UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledPacket_type));
    UART_SendBytes(&usarts[2], ledpackets[PANEL_SW].a, sizeof(ledPacket_type));
    UART_SendBytes(&usarts[1], ledpackets[PANEL_SE].a, sizeof(ledPacket_type));
    UART_SendBytes(&usarts[0], ledpackets[PANEL_NE].a, sizeof(ledPacket_type));
    lastPacketTime = LocalTime;
}
