
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bpf_if {scalar_t__ bif_ifp; int bif_dlt; int bif_hdrlen; int bif_exthdrlen; struct bpf_if* bif_next; int bif_tap; int bif_send; } ;
struct bpf_hdr_ext {int dummy; } ;
typedef scalar_t__ ifnet_t ;
typedef int errno_t ;
typedef int bpf_tap_func ;
typedef int bpf_send_func ;
typedef scalar_t__ boolean_t ;


 int BPF_WORDALIGN (int) ;
 int DLT_EN10MB ;
 int EEXIST ;
 scalar_t__ FALSE ;
 int FREE (struct bpf_if*,int ) ;
 scalar_t__ IFT_ETHER ;
 int M_DEVBUF ;
 int M_WAIT ;
 int M_ZERO ;
 int SIZEOF_BPF_HDR ;
 scalar_t__ TRUE ;
 scalar_t__ _MALLOC (int,int ,int) ;
 scalar_t__ bootverbose ;
 struct bpf_if* bpf_iflist ;
 int bpf_mlock ;
 char* if_name (scalar_t__) ;
 int ifnet_reference (scalar_t__) ;
 scalar_t__ ifnet_type (scalar_t__) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*) ;
 int printf (char*,char*,...) ;

errno_t
bpf_attach(
 ifnet_t ifp,
 u_int32_t dlt,
 u_int32_t hdrlen,
 bpf_send_func send,
 bpf_tap_func tap)
{
 struct bpf_if *bp;
 struct bpf_if *bp_new;
 struct bpf_if *bp_before_first = ((void*)0);
 struct bpf_if *bp_first = ((void*)0);
 struct bpf_if *bp_last = ((void*)0);
 boolean_t found;

 bp_new = (struct bpf_if *) _MALLOC(sizeof(*bp_new), M_DEVBUF,
     M_WAIT | M_ZERO);
 if (bp_new == 0)
  panic("bpfattach");

 lck_mtx_lock(bpf_mlock);






 found = FALSE;
 for (bp = bpf_iflist; bp != ((void*)0); bp = bp->bif_next) {
  if (bp->bif_ifp != ifp) {
   if (bp_first != ((void*)0)) {

    break;
   }
   bp_before_first = bp;
  } else {
   if (bp->bif_dlt == dlt) {
    found = TRUE;
    break;
   }
   if (bp_first == ((void*)0)) {
    bp_first = bp;
   }
   bp_last = bp;
  }
 }
 if (found) {
  lck_mtx_unlock(bpf_mlock);
  printf("bpfattach - %s with dlt %d is already attached\n",
   if_name(ifp), dlt);
  FREE(bp_new, M_DEVBUF);
  return (EEXIST);
 }

 bp_new->bif_ifp = ifp;
 bp_new->bif_dlt = dlt;
 bp_new->bif_send = send;
 bp_new->bif_tap = tap;

 if (bp_first == ((void*)0)) {

  bp_new->bif_next = bpf_iflist;
  bpf_iflist = bp_new;
 } else {
  if (ifnet_type(ifp) == IFT_ETHER && dlt == DLT_EN10MB) {

   if (bp_before_first != ((void*)0)) {

    bp_before_first->bif_next = bp_new;
   } else {

    bpf_iflist = bp_new;
   }
   bp_new->bif_next = bp_first;
  } else {

   bp_new->bif_next = bp_last->bif_next;
   bp_last->bif_next = bp_new;
  }
 }







 bp_new->bif_hdrlen = BPF_WORDALIGN(hdrlen + SIZEOF_BPF_HDR) - hdrlen;
 bp_new->bif_exthdrlen = BPF_WORDALIGN(hdrlen +
     sizeof(struct bpf_hdr_ext)) - hdrlen;


 ifnet_reference(ifp);

 lck_mtx_unlock(bpf_mlock);


 if (bootverbose)
  printf("bpf: %s attached\n", if_name(ifp));


 return (0);
}
