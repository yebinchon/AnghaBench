
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_if {int (* bif_tap ) (TYPE_1__*,int ,int ) ;int bif_dlt; TYPE_1__* bif_ifp; struct bpf_if* bif_next; struct bpf_d* bif_dlist; } ;
struct bpf_d {int bd_flags; struct bpf_d* bd_next; struct bpf_if* bd_bif; } ;
typedef int errno_t ;
struct TYPE_3__ {struct bpf_if* if_bpf; } ;


 int BPF_DETACHED ;
 int BPF_DETACHING ;
 int BPF_FINALIZE_PKTAP ;
 int BPF_TAP_INPUT_OUTPUT ;
 int DLT_PKTAP ;
 int bpf_acquire_d (struct bpf_d*) ;
 struct bpf_if* bpf_iflist ;
 int bpf_tap_callback ;
 int dlil_set_bpf_tap (TYPE_1__*,int ,int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static errno_t
bpf_attachd(struct bpf_d *d, struct bpf_if *bp)
{
 int first = bp->bif_dlist == ((void*)0);
 int error = 0;






 d->bd_bif = bp;
 d->bd_next = bp->bif_dlist;
 bp->bif_dlist = d;





 bpf_acquire_d(d);

 if (first) {

  if (bp->bif_ifp->if_bpf == ((void*)0)) {
   struct bpf_if *tmp, *primary = ((void*)0);

   for (tmp = bpf_iflist; tmp; tmp = tmp->bif_next) {
    if (tmp->bif_ifp == bp->bif_ifp) {
     primary = tmp;
     break;
    }
   }
   bp->bif_ifp->if_bpf = primary;
  }

  if (bp->bif_ifp->if_bpf == bp)
   dlil_set_bpf_tap(bp->bif_ifp, BPF_TAP_INPUT_OUTPUT,
       bpf_tap_callback);

  if (bp->bif_tap != ((void*)0))
   error = bp->bif_tap(bp->bif_ifp, bp->bif_dlt,
       BPF_TAP_INPUT_OUTPUT);
 }




 d->bd_flags &= ~(BPF_DETACHING | BPF_DETACHED);

 if (bp->bif_dlt == DLT_PKTAP) {
  d->bd_flags |= BPF_FINALIZE_PKTAP;
 } else {
  d->bd_flags &= ~BPF_FINALIZE_PKTAP;
 }
 return (error);
}
