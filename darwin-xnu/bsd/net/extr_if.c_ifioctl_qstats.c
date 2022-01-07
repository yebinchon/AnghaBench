
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
struct ifnet {int if_snd; } ;
struct if_qstatsreq {int ifqr_len; int ifqr_buf; int ifqr_slot; } ;
typedef int ifqr_slot ;
typedef int ifqr_len ;
typedef scalar_t__ caddr_t ;



 int VERIFY (int ) ;
 int bcopy (int *,int *,int) ;
 int ifclassq_getqstats (int *,int ,int ,int *) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_qstats(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct if_qstatsreq *ifqr = (struct if_qstatsreq *)(void *)data;
 u_int32_t ifqr_len, ifqr_slot;
 int error = 0;

 VERIFY(ifp != ((void*)0));

 switch (cmd) {
 case 128: {
  bcopy(&ifqr->ifqr_slot, &ifqr_slot, sizeof (ifqr_slot));
  bcopy(&ifqr->ifqr_len, &ifqr_len, sizeof (ifqr_len));
  error = ifclassq_getqstats(&ifp->if_snd, ifqr_slot,
      ifqr->ifqr_buf, &ifqr_len);
  if (error != 0)
   ifqr_len = 0;
  bcopy(&ifqr_len, &ifqr->ifqr_len, sizeof (ifqr_len));
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
