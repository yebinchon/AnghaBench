
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_ifsflags; int ifbr_ifsname; } ;
struct bstp_port {int dummy; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_ifflags; struct bstp_port bif_stp; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int IFBIFMASK ;
 int IFBIF_BSTP_AUTOEDGE ;
 int IFBIF_BSTP_AUTOPTP ;
 int IFBIF_BSTP_EDGE ;
 int IFBIF_BSTP_PTP ;
 int IFBIF_SPAN ;
 int IFBIF_STP ;
 int bridge_in_bsd_mode (struct bridge_softc*) ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;
 int bstp_disable (struct bstp_port*) ;
 int bstp_enable (struct bstp_port*) ;
 int bstp_set_autoedge (struct bstp_port*,int) ;
 int bstp_set_autoptp (struct bstp_port*,int) ;
 int bstp_set_edge (struct bstp_port*,int) ;
 int bstp_set_ptp (struct bstp_port*,int) ;

__attribute__((used)) static int
bridge_ioctl_sifflags(struct bridge_softc *sc, void *arg)
{
 struct ifbreq *req = arg;
 struct bridge_iflist *bif;





 if (!bridge_in_bsd_mode(sc)) {
  return (EINVAL);
 }

 bif = bridge_lookup_member(sc, req->ifbr_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);

 if (req->ifbr_ifsflags & IFBIF_SPAN)

  return (EINVAL);
 if (req->ifbr_ifsflags & IFBIF_STP)
  return (EOPNOTSUPP);



 bif->bif_ifflags = req->ifbr_ifsflags & IFBIFMASK;


 return (0);
}
