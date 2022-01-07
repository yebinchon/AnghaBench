
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifbrhostfilter {int ifbrhf_ipsrc; int ifbrhf_hwsrca; int ifbrhf_flags; int ifbrhf_ifsname; } ;
struct bridge_softc {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct bridge_iflist {int bif_flags; TYPE_1__ bif_hf_ipsrc; int bif_hf_hwsrc; } ;


 int BIFF_HOST_FILTER ;
 int ENOENT ;
 int ETHER_ADDR_LEN ;
 int IFBRHF_ENABLED ;
 int bcopy (int ,int ,int ) ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;
 int bzero (struct ifbrhostfilter*,int) ;

__attribute__((used)) static int
bridge_ioctl_ghostfilter(struct bridge_softc *sc, void *arg)
{
 struct ifbrhostfilter *req = arg;
 struct bridge_iflist *bif;

 bif = bridge_lookup_member(sc, req->ifbrhf_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);

 bzero(req, sizeof(struct ifbrhostfilter));
 if (bif->bif_flags & BIFF_HOST_FILTER) {
  req->ifbrhf_flags |= IFBRHF_ENABLED;
  bcopy(bif->bif_hf_hwsrc, req->ifbrhf_hwsrca,
      ETHER_ADDR_LEN);
  req->ifbrhf_ipsrc = bif->bif_hf_ipsrc.s_addr;
 }
 return (0);
}
