
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pktap_v2_hdr {int pth_flags; } ;
struct TYPE_4__ {int tv_usec; int tv_sec; } ;
struct pktap_header {int pth_flags; TYPE_2__ pth_tstamp; } ;
struct TYPE_3__ {int tv_usec; int tv_sec; } ;
struct bpf_hdr {TYPE_1__ bh_tstamp; } ;


 int PTH_FLAG_DELAY_PKTAP ;
 int PTH_FLAG_TSTAMP ;
 int PTH_FLAG_V2_HDR ;
 int pktap_finalize_proc_info (struct pktap_header*) ;
 int pktap_v2_finalize_proc_info (struct pktap_v2_hdr*) ;

__attribute__((used)) static void
bpf_finalize_pktap(struct bpf_hdr *hp, struct pktap_header *pktaphdr)
{
 if (pktaphdr->pth_flags & PTH_FLAG_V2_HDR) {
  struct pktap_v2_hdr *pktap_v2_hdr;

  pktap_v2_hdr = (struct pktap_v2_hdr *)pktaphdr;

  if (pktap_v2_hdr->pth_flags & PTH_FLAG_DELAY_PKTAP)
   pktap_v2_finalize_proc_info(pktap_v2_hdr);
 } else {
  if (pktaphdr->pth_flags & PTH_FLAG_DELAY_PKTAP)
   pktap_finalize_proc_info(pktaphdr);

  if (pktaphdr->pth_flags & PTH_FLAG_TSTAMP) {
   hp->bh_tstamp.tv_sec = pktaphdr->pth_tstamp.tv_sec;
   hp->bh_tstamp.tv_usec = pktaphdr->pth_tstamp.tv_usec;
  }
 }
}
