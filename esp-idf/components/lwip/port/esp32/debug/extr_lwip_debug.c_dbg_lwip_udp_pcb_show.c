
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_pcb {struct udp_pcb* next; } ;


 int dbg_lwip_udp_pcb_one_show (struct udp_pcb*) ;
 struct udp_pcb* udp_pcbs ;

void dbg_lwip_udp_pcb_show(void)
{
    struct udp_pcb *pcb = udp_pcbs;

    while (pcb){
        dbg_lwip_udp_pcb_one_show(pcb);
        pcb = pcb->next;
    }
}
