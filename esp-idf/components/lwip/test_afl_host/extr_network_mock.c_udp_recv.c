
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udp_recv_fn ;
struct udp_pcb {int dummy; } ;



void udp_recv(struct udp_pcb *pcb, udp_recv_fn recv, void *recv_arg)
{
}
