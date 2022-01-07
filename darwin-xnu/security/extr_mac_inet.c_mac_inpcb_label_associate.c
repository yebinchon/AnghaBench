
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct inpcb {int inp_label; } ;


 int MAC_PERFORM (int ,struct socket*,int ,struct inpcb*,int ) ;
 int inpcb_label_associate ;

void
mac_inpcb_label_associate(struct socket *so, struct inpcb *inp)
{

 MAC_PERFORM(inpcb_label_associate, so, so->so_label, inp,
     inp->inp_label);
}
