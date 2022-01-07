
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_pcb {int dummy; } ;


 int free (struct udp_pcb*) ;

void udp_remove(struct udp_pcb *pcb)
{
    if (pcb == ((void*)0))
    {
       free(pcb);
    }
}
