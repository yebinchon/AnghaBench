
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq64 {int ifba_flags; int ifba_vlan; int ifba_dst; int ifba_ifsname; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int dummy; } ;


 int ENOENT ;
 int bridge_in_bsd_mode (struct bridge_softc*) ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;
 int bridge_rtupdate (struct bridge_softc*,int ,int ,struct bridge_iflist*,int,int ) ;

__attribute__((used)) static int
bridge_ioctl_saddr64(struct bridge_softc *sc, void *arg)
{
 struct ifbareq64 *req = arg;
 struct bridge_iflist *bif;
 int error;

 if (!bridge_in_bsd_mode(sc)) {
  return (0);
 }

 bif = bridge_lookup_member(sc, req->ifba_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);

 error = bridge_rtupdate(sc, req->ifba_dst, req->ifba_vlan, bif, 1,
     req->ifba_flags);

 return (error);
}
