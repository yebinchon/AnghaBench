
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_seg {struct l2cap_seg* next; } ;
struct l2cap_pcb_listen {struct l2cap_pcb_listen* next; } ;
struct l2cap_pcb {struct l2cap_pcb* next; } ;


 int L2CAP_SEG_RMV (struct l2cap_seg**,struct l2cap_seg*) ;
 int btmemb_free (int *,struct l2cap_seg*) ;
 struct l2cap_pcb* l2cap_active_pcbs ;
 int l2cap_close (struct l2cap_pcb*) ;
 int l2cap_init () ;
 struct l2cap_seg* l2cap_insegs ;
 struct l2cap_pcb_listen* l2cap_listen_pcbs ;
 int l2cap_segs ;

void l2cap_reset_all(void)
{
 struct l2cap_pcb *pcb, *tpcb;
 struct l2cap_pcb_listen *lpcb, *tlpcb;
 struct l2cap_seg *seg, *tseg;

 for(pcb = l2cap_active_pcbs; pcb != ((void*)0);) {
  tpcb = pcb->next;
  l2cap_close(pcb);
  pcb = tpcb;
 }

 for(lpcb = l2cap_listen_pcbs; lpcb != ((void*)0);) {
  tlpcb = lpcb->next;
  l2cap_close((struct l2cap_pcb *)lpcb);
  lpcb = tlpcb;
 }

 for(seg = l2cap_insegs; seg != ((void*)0);) {
  tseg = seg->next;
  L2CAP_SEG_RMV(&(l2cap_insegs), seg);
  btmemb_free(&l2cap_segs, seg);
  seg = tseg;
 }

 l2cap_init();
}
