
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq64 {int ifba_vlan; int ifba_dst; } ;
struct bridge_softc {int dummy; } ;


 int bridge_in_bsd_mode (struct bridge_softc*) ;
 int bridge_rtdaddr (struct bridge_softc*,int ,int ) ;

__attribute__((used)) static int
bridge_ioctl_daddr64(struct bridge_softc *sc, void *arg)
{
 struct ifbareq64 *req = arg;

 if (!bridge_in_bsd_mode(sc)) {
  return (0);
 }
 return (bridge_rtdaddr(sc, req->ifba_dst, req->ifba_vlan));
}
