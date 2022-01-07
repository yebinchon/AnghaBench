
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef int * ifnet_t ;
typedef int iff_flags_t ;
typedef TYPE_1__* if_fake_ref ;
struct TYPE_3__ {struct mbuf* iff_pending_tx_packet; int * iff_peer; scalar_t__ iff_start_busy; int iff_flags; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 struct mbuf* copy_mbuf (struct mbuf*) ;
 int feth_lock () ;
 int feth_output_common (int *,struct mbuf*,int *,int ) ;
 int feth_unlock () ;
 scalar_t__ ifnet_dequeue (int *,struct mbuf**) ;
 TYPE_1__* ifnet_get_if_fake (int *) ;
 int m_freem (struct mbuf*) ;
 int printf (char*) ;

__attribute__((used)) static void
feth_start(ifnet_t ifp)
{
 struct mbuf * copy_m = ((void*)0);
 if_fake_ref fakeif;
 iff_flags_t flags = 0;
 ifnet_t peer = ((void*)0);
 struct mbuf * m;
 struct mbuf * save_m;

 feth_lock();
 fakeif = ifnet_get_if_fake(ifp);
 if (fakeif->iff_start_busy) {
  feth_unlock();
  printf("if_fake: start is busy\n");
  return;
 }
 if (fakeif != ((void*)0)) {
  peer = fakeif->iff_peer;
  flags = fakeif->iff_flags;
 }


 m = fakeif->iff_pending_tx_packet;
 if (m != ((void*)0)) {
  if (peer != ((void*)0)) {
   copy_m = copy_mbuf(m);
   if (copy_m == ((void*)0)) {
    feth_unlock();
    return;
   }
  }
  fakeif->iff_pending_tx_packet = ((void*)0);
  m_freem(m);
  m = ((void*)0);
 }
 fakeif->iff_start_busy = TRUE;
 feth_unlock();
 save_m = ((void*)0);
 for (;;) {
  if (copy_m != ((void*)0)) {
   assert(peer != ((void*)0));
   feth_output_common(ifp, copy_m, peer, flags);
   copy_m = ((void*)0);
  }
  if (ifnet_dequeue(ifp, &m) != 0) {
   break;
  }
  if (peer == ((void*)0)) {
   m_freem(m);
  } else {
   copy_m = copy_mbuf(m);
   if (copy_m == ((void*)0)) {
    save_m = m;
    break;
   }
   m_freem(m);
  }
 }
 peer = ((void*)0);
 feth_lock();
 fakeif = ifnet_get_if_fake(ifp);
 if (fakeif != ((void*)0)) {
  fakeif->iff_start_busy = FALSE;
  if (save_m != ((void*)0) && fakeif->iff_peer != ((void*)0)) {

   fakeif->iff_pending_tx_packet = save_m;
   save_m = ((void*)0);
  }
 }
 feth_unlock();
 if (save_m != ((void*)0)) {

  m_freem(save_m);
 }
}
