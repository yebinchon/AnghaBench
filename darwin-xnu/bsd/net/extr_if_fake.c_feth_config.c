
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * ifnet_t ;
typedef TYPE_1__* if_fake_ref ;
struct TYPE_4__ {int * iff_peer; } ;


 int EBUSY ;
 int EINVAL ;
 int FALSE ;
 int KEV_DL_LINK_OFF ;
 int KEV_DL_LINK_ON ;
 int TRUE ;
 scalar_t__ feth_is_detaching (TYPE_1__*) ;
 int feth_lock () ;
 int feth_unlock () ;
 TYPE_1__* ifnet_get_if_fake (int *) ;
 int interface_link_event (int *,int ) ;

__attribute__((used)) static int
feth_config(ifnet_t ifp, ifnet_t peer)
{
 int connected = FALSE;
 int disconnected = FALSE;
 int error = 0;
 if_fake_ref fakeif = ((void*)0);

 feth_lock();
 fakeif = ifnet_get_if_fake(ifp);
 if (fakeif == ((void*)0)) {
  error = EINVAL;
  goto done;
 }
 if (peer != ((void*)0)) {

  if_fake_ref peer_fakeif;

  peer_fakeif = ifnet_get_if_fake(peer);
  if (peer_fakeif == ((void*)0)) {
   error = EINVAL;
   goto done;
  }
  if (feth_is_detaching(fakeif) ||
      feth_is_detaching(peer_fakeif) ||
      peer_fakeif->iff_peer != ((void*)0) ||
      fakeif->iff_peer != ((void*)0)) {
   error = EBUSY;
   goto done;
  }
  fakeif->iff_peer = peer;
  peer_fakeif->iff_peer = ifp;
  connected = TRUE;
 }
 else if (fakeif->iff_peer != ((void*)0)) {

  if_fake_ref peer_fakeif;

  peer = fakeif->iff_peer;
  peer_fakeif = ifnet_get_if_fake(peer);
  if (peer_fakeif == ((void*)0)) {

   error = EINVAL;
   goto done;
  }
  fakeif->iff_peer = ((void*)0);
  peer_fakeif->iff_peer = ((void*)0);
  disconnected = TRUE;
 }

 done:
 feth_unlock();


 if (connected) {
  interface_link_event(ifp, KEV_DL_LINK_ON);
  interface_link_event(peer, KEV_DL_LINK_ON);
 }
 else if (disconnected) {
  interface_link_event(ifp, KEV_DL_LINK_OFF);
  interface_link_event(peer, KEV_DL_LINK_OFF);
 }
 return (error);
}
