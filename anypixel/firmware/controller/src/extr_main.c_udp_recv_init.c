
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR_OK ;
 int IP_ADDR_ANY ;
 int LWIP_DEBUGF (int ,char*) ;
 int UDP_DEBUG ;
 int * global_pcb ;
 scalar_t__ udp_bind (int *,int ,int) ;
 int * udp_new () ;
 int udp_process_recv_packet ;
 int udp_recv (int *,int ,int *) ;

void udp_recv_init(void)
{

    global_pcb = udp_new();
    if (global_pcb == ((void*)0)) {
        LWIP_DEBUGF(UDP_DEBUG, ("udp_new failed!\n"));
        return;
    }


    if (udp_bind(global_pcb, IP_ADDR_ANY, 7) != ERR_OK) {
        LWIP_DEBUGF(UDP_DEBUG, ("udp_bind failed!\n"));
        return;
    }



    udp_recv(global_pcb, udp_process_recv_packet, ((void*)0));
}
