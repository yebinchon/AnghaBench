
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_sig {TYPE_1__* p; } ;
struct l2cap_pcb {int remote_bdaddr; } ;
typedef int err_t ;
struct TYPE_2__ {int tot_len; } ;


 int l2cap_write (int *,TYPE_1__*,int ) ;

err_t l2cap_rexmit_signal(struct l2cap_pcb *pcb, struct l2cap_sig *sig)
{
 err_t ret;


 ret = l2cap_write(&(pcb->remote_bdaddr), sig->p, sig->p->tot_len);

 return ret;
}
