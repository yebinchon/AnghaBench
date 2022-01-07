
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * le_prev; int * le_next; } ;
struct TYPE_4__ {int * le_prev; int * le_next; } ;
struct inpcbport {int inp_flags2; scalar_t__ inp_lport; TYPE_3__* inp_pcbinfo; int inp_flowhash; struct inpcbport* inp_phd; int phd_pcblist; TYPE_2__ inp_portlist; TYPE_1__ inp_hash; scalar_t__ inp_gencnt; } ;
struct inpcb {int inp_flags2; scalar_t__ inp_lport; TYPE_3__* inp_pcbinfo; int inp_flowhash; struct inpcb* inp_phd; int phd_pcblist; TYPE_2__ inp_portlist; TYPE_1__ inp_hash; scalar_t__ inp_gencnt; } ;
struct TYPE_6__ {scalar_t__ ipi_twcount; int ipi_count; scalar_t__ ipi_gencnt; } ;


 int FREE (struct inpcbport*,int ) ;
 int INP2_INHASHLIST ;
 int INP2_IN_FCTREE ;
 int INP2_TIMEWAIT ;
 int INPFC_REMOVE ;
 int INPFC_SOLOCKED ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct inpcbport*,int ) ;
 int M_PCB ;
 int VERIFY (int) ;
 int inp_fc_getinp (int ,int) ;
 int inp_hash ;
 int inp_list ;
 int inp_portlist ;
 int phd_hash ;
 int tcp_remove_from_time_wait (struct inpcbport*) ;

void
in_pcbremlists(struct inpcb *inp)
{
 inp->inp_gencnt = ++inp->inp_pcbinfo->ipi_gencnt;






 if (inp->inp_flags2 & INP2_INHASHLIST) {
  struct inpcbport *phd = inp->inp_phd;

  VERIFY(phd != ((void*)0) && inp->inp_lport > 0);

  LIST_REMOVE(inp, inp_hash);
  inp->inp_hash.le_next = ((void*)0);
  inp->inp_hash.le_prev = ((void*)0);

  LIST_REMOVE(inp, inp_portlist);
  inp->inp_portlist.le_next = ((void*)0);
  inp->inp_portlist.le_prev = ((void*)0);
  if (LIST_EMPTY(&phd->phd_pcblist)) {
   LIST_REMOVE(phd, phd_hash);
   FREE(phd, M_PCB);
  }
  inp->inp_phd = ((void*)0);
  inp->inp_flags2 &= ~INP2_INHASHLIST;
 }
 VERIFY(!(inp->inp_flags2 & INP2_INHASHLIST));

 if (inp->inp_flags2 & INP2_TIMEWAIT) {

  tcp_remove_from_time_wait(inp);
  inp->inp_flags2 &= ~INP2_TIMEWAIT;
  VERIFY(inp->inp_pcbinfo->ipi_twcount != 0);
  inp->inp_pcbinfo->ipi_twcount--;
 } else {

  LIST_REMOVE(inp, inp_list);
 }

 if (inp->inp_flags2 & INP2_IN_FCTREE) {
  inp_fc_getinp(inp->inp_flowhash, (INPFC_SOLOCKED|INPFC_REMOVE));
  VERIFY(!(inp->inp_flags2 & INP2_IN_FCTREE));
 }

 inp->inp_pcbinfo->ipi_count--;
}
