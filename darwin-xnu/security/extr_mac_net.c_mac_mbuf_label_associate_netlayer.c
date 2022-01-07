
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct mbuf*,struct label*,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_netlayer ;

void
mac_mbuf_label_associate_netlayer(struct mbuf *oldmbuf, struct mbuf *newmbuf)
{
 struct label *oldmbuflabel, *newmbuflabel;

 oldmbuflabel = mac_mbuf_to_label(oldmbuf);
 newmbuflabel = mac_mbuf_to_label(newmbuf);

 MAC_PERFORM(mbuf_label_associate_netlayer, oldmbuf, oldmbuflabel,
     newmbuf, newmbuflabel);
}
