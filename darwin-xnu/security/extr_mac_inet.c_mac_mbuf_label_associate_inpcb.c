
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int inp_label; } ;


 int MAC_PERFORM (int ,struct inpcb*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_inpcb ;

void
mac_mbuf_label_associate_inpcb(struct inpcb *inp, struct mbuf *m)
{
 struct label *mlabel;


 mlabel = mac_mbuf_to_label(m);

 MAC_PERFORM(mbuf_label_associate_inpcb, inp, inp->inp_label, m, mlabel);
}
