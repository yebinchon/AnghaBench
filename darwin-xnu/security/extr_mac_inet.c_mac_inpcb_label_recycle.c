
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_label; } ;


 int MAC_PERFORM (int ,int ) ;
 int inpcb_label_recycle ;

void
mac_inpcb_label_recycle(struct inpcb *inp)
{

 MAC_PERFORM(inpcb_label_recycle, inp->inp_label);
}
