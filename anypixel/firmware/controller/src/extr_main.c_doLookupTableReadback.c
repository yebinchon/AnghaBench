
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pbuf {scalar_t__ payload; } ;
typedef int ledPacket_type ;


 int Delay (int) ;
 scalar_t__ ERR_OK ;
 int LocalTime ;
 int LwIP_Periodic_Handle (int ) ;
 int PANEL_NE ;
 int PANEL_NW ;
 int PANEL_SE ;
 int PANEL_SW ;
 int PBUF_RAM ;
 int PBUF_TRANSPORT ;
 scalar_t__ POWER_ROW ;
 int USART_NE ;
 int USART_NW ;
 int USART_SE ;
 int USART_SW ;
 int global_pcb ;
 scalar_t__ global_row ;
 int lookupTableReadbackHelper (int *,scalar_t__,int,int ,int ) ;
 struct pbuf* pbuf_alloc (int ,int,int ) ;
 int pbuf_free (struct pbuf*) ;
 int udp_dest ;
 scalar_t__ udp_sendto (int ,struct pbuf*,int *,int) ;

__attribute__((used)) static void doLookupTableReadback() {
    int i, failcount;
    ledPacket_type pkt;
    struct pbuf *p;
    bool result = 0;

    if(global_row == POWER_ROW)
        return;

    p = pbuf_alloc(PBUF_TRANSPORT, 196*3*3/2+4, PBUF_RAM);

    failcount = 0;
    i = 0;
    do {
        result = 0;
        result |= lookupTableReadbackHelper(&pkt, p->payload+4, i, USART_NW, PANEL_NW);
        result |= lookupTableReadbackHelper(&pkt, p->payload+4, i, USART_NE, PANEL_NE);
        result |= lookupTableReadbackHelper(&pkt, p->payload+4, i, USART_SW, PANEL_SW);
        result |= lookupTableReadbackHelper(&pkt, p->payload+4, i, USART_SE, PANEL_SE);
        if(result != 0) {
            ((uint8_t*)p->payload)[0] = 0x23;
            ((uint8_t*)p->payload)[1] = i;
            if( udp_sendto(global_pcb, p, &udp_dest, 27482) != ERR_OK ) {
                Delay(100);
                LwIP_Periodic_Handle(LocalTime);
                continue;
            }
            Delay(20);
            LwIP_Periodic_Handle(LocalTime);
            i++;
            failcount = 0;
        } else {
            if(failcount++ > 4)
                break;
        }
    } while(i < 65);


    pbuf_free(p);
}
