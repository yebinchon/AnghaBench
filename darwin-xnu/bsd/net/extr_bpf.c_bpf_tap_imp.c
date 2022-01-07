
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct pktap_header_buffer {int dummy; } ;
struct bpf_packet {int bpfp_header_length; int bpfp_total_length; struct pktap_header_buffer* bpfp_header; } ;
struct bpf_if {scalar_t__ bif_dlt; TYPE_1__* bif_ifp; struct bpf_d* bif_dlist; struct bpf_if* bif_next; } ;
struct bpf_d {int bd_flags; int bd_filter; int bd_rcount; int bd_seesent; struct bpf_d* bd_next; } ;
typedef TYPE_1__* ifnet_t ;
typedef int bpfp_header_tmp ;
struct TYPE_4__ {scalar_t__ if_type; struct bpf_if* if_bpf; } ;


 int BPF_PKTHDRV2 ;
 int BPF_TRUNCATE ;
 scalar_t__ DLT_PKTAP ;
 scalar_t__ IFT_PKTAP ;
 scalar_t__ bpf_filter (int ,int *,int ,int ) ;
 int bpf_mlock ;
 int catchpacket (struct bpf_d*,struct bpf_packet*,scalar_t__,int) ;
 int convert_to_pktap_header_to_v2 (struct bpf_packet*,int) ;
 int get_pkt_trunc_len (int *,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ mac_bpfdesc_check_receive (struct bpf_d*,TYPE_1__*) ;
 int memcpy (struct pktap_header_buffer*,struct pktap_header_buffer*,int) ;
 scalar_t__ min (scalar_t__,int ) ;

__attribute__((used)) static inline void
bpf_tap_imp(
 ifnet_t ifp,
 u_int32_t dlt,
 struct bpf_packet *bpf_pkt,
 int outbound)
{
 struct bpf_d *d;
 u_int slen;
 struct bpf_if *bp;
 lck_mtx_lock(bpf_mlock);
 if (ifp->if_bpf == ((void*)0)) {
  lck_mtx_unlock(bpf_mlock);
  return;
 }
 for (bp = ifp->if_bpf; bp != ((void*)0); bp = bp->bif_next) {
  if (bp->bif_ifp != ifp) {

   bp = ((void*)0);
   break;
  }
  if (dlt == 0 || bp->bif_dlt == dlt) {

   break;
  }
 }
 if (bp == ((void*)0)) {
  goto done;
 }
 for (d = bp->bif_dlist; d; d = d->bd_next) {
  struct bpf_packet *bpf_pkt_saved = bpf_pkt;
  struct bpf_packet bpf_pkt_tmp;
  struct pktap_header_buffer bpfp_header_tmp;

  if (outbound && !d->bd_seesent)
   continue;

  ++d->bd_rcount;
  slen = bpf_filter(d->bd_filter, (u_char *)bpf_pkt,
      bpf_pkt->bpfp_total_length, 0);
  if (bp->bif_ifp->if_type == IFT_PKTAP &&
      bp->bif_dlt == DLT_PKTAP) {





   if ((d->bd_flags & BPF_PKTHDRV2) &&
       bpf_pkt->bpfp_header_length <= sizeof(bpfp_header_tmp)) {
    bpf_pkt_tmp = *bpf_pkt;

    bpf_pkt = &bpf_pkt_tmp;

    memcpy(&bpfp_header_tmp, bpf_pkt->bpfp_header,
        bpf_pkt->bpfp_header_length);

    bpf_pkt->bpfp_header = &bpfp_header_tmp;

    convert_to_pktap_header_to_v2(bpf_pkt,
        !!(d->bd_flags & BPF_TRUNCATE));
   }

   if (d->bd_flags & BPF_TRUNCATE) {
    slen = min(slen,
        get_pkt_trunc_len((u_char *)bpf_pkt,
       bpf_pkt->bpfp_total_length));
  }
  }
  if (slen != 0) {




   catchpacket(d, bpf_pkt, slen, outbound);
  }
  bpf_pkt = bpf_pkt_saved;
 }

done:
 lck_mtx_unlock(bpf_mlock);
}
