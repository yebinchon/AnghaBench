
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_pcb {void* callback_arg; } ;



void l2cap_arg(struct l2cap_pcb *pcb, void *arg)
{
 pcb->callback_arg = arg;
}
