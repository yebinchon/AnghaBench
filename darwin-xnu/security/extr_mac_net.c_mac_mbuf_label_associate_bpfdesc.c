
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 int MAC_PERFORM (int ,struct bpf_d*,struct label*,struct mbuf*,struct label*) ;
 struct label* mac_bpfdesc_label_get (struct bpf_d*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_bpfdesc ;

void
mac_mbuf_label_associate_bpfdesc(struct bpf_d *bpf_d, struct mbuf *mbuf)
{
 struct label *m_label, *b_label;



 m_label = mac_mbuf_to_label(mbuf);
 b_label = mac_bpfdesc_label_get(bpf_d);

 MAC_PERFORM(mbuf_label_associate_bpfdesc, bpf_d, b_label, mbuf,
     m_label);
}
