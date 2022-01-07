
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int u_int32_t ;
struct if_fake_request {int iffr_peer_name; } ;
typedef int * ifnet_t ;
typedef int iffr ;
typedef TYPE_1__* if_fake_ref ;
struct TYPE_2__ {int * iff_peer; } ;


 int EINVAL ;
 int EOPNOTSUPP ;

 int bzero (struct if_fake_request*,int) ;
 int copyout (struct if_fake_request*,int ,int) ;
 int feth_lock () ;
 int feth_unlock () ;
 int if_name (int *) ;
 int ifnet_softc (int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
feth_get_drvspec(ifnet_t ifp, u_int32_t cmd, u_int32_t len,
   user_addr_t user_addr)
{
 int error = EOPNOTSUPP;
 if_fake_ref fakeif;
 struct if_fake_request iffr;
 ifnet_t peer;

 switch (cmd) {
 case 128:
  if (len < sizeof(iffr)) {
   error = EINVAL;
   break;
  }
  feth_lock();
  fakeif = (if_fake_ref)ifnet_softc(ifp);
  if (fakeif == ((void*)0)) {
   feth_unlock();
   error = EOPNOTSUPP;
   break;
  }
  peer = fakeif->iff_peer;
  feth_unlock();
  bzero(&iffr, sizeof(iffr));
  if (peer != ((void*)0)) {
   strlcpy(iffr.iffr_peer_name,
    if_name(peer),
    sizeof(iffr.iffr_peer_name));
  }
  error = copyout(&iffr, user_addr, sizeof(iffr));
  break;
 default:
  break;
 }
 return (error);
}
