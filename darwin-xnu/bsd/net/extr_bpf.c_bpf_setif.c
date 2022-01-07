
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct bpf_if {scalar_t__ bif_dlt; struct ifnet* bif_ifp; struct bpf_if* bif_next; } ;
struct bpf_d {scalar_t__ bd_hbuf_read; int bd_flags; struct bpf_if* bd_bif; } ;
typedef struct ifnet* ifnet_t ;
typedef int caddr_t ;


 int BPF_CLOSING ;
 int BPF_WANT_PKTAP ;
 scalar_t__ DLT_PKTAP ;
 int ENXIO ;
 scalar_t__ IFNET_IS_INTCOPROC (struct ifnet*) ;
 int PRINET ;
 int bpf_allocbufs (struct bpf_d*) ;
 scalar_t__ bpf_attachd (struct bpf_d*,struct bpf_if*) ;
 scalar_t__ bpf_detachd (struct bpf_d*,int ) ;
 struct bpf_if* bpf_iflist ;
 int bpf_mlock ;
 int intcoproc_unrestricted ;
 int msleep (int ,int ,int ,char*,int *) ;
 int reset_d (struct bpf_d*) ;

__attribute__((used)) static int
bpf_setif(struct bpf_d *d, ifnet_t theywant, bool do_reset, bool has_hbuf_read)
{
 struct bpf_if *bp;
 int error;

 while (d->bd_hbuf_read != 0 && !has_hbuf_read)
  msleep((caddr_t)d, bpf_mlock, PRINET, "bpf_reading", ((void*)0));

 if ((d->bd_flags & BPF_CLOSING) != 0)
  return (ENXIO);




 for (bp = bpf_iflist; bp != 0; bp = bp->bif_next) {
  struct ifnet *ifp = bp->bif_ifp;

  if (ifp == 0 || ifp != theywant)
   continue;



  if (bp->bif_dlt == DLT_PKTAP && !(d->bd_flags & BPF_WANT_PKTAP))
   continue;



  if (!intcoproc_unrestricted && IFNET_IS_INTCOPROC(ifp))
   continue;




  error = bpf_allocbufs(d);
  if (error != 0)
   return (error);



  if (bp != d->bd_bif) {
   if (d->bd_bif != ((void*)0)) {
    if (bpf_detachd(d, 0) != 0)
     return (ENXIO);
   }
   if (bpf_attachd(d, bp) != 0)
    return (ENXIO);
  }
  if (do_reset) {
  reset_d(d);
  }
  return (0);
 }

 return (ENXIO);
}
