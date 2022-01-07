
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_pcb {int dummy; } ;


 struct udp_pcb* malloc (int) ;

struct udp_pcb *udp_new(void)
{
    return malloc(sizeof(struct udp_pcb));
}
