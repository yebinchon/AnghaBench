
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct inpcb {int inp_label; } ;


 int MAC_PERFORM (int ,struct socket*,int ,struct inpcb*,int ) ;
 int inpcb_label_update ;
 struct inpcb* sotoinpcb (struct socket*) ;

void
mac_inpcb_label_update(struct socket *so)
{
 struct inpcb *inp;


 inp = sotoinpcb(so);

 if (inp != ((void*)0)) {

  MAC_PERFORM(inpcb_label_update, so, so->so_label, inp,
      inp->inp_label);
 }
}
