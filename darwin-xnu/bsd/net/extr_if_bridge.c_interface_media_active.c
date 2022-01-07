
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_status; scalar_t__ ifm_count; } ;
typedef int ifmr ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int SIOCGIFMEDIA ;
 int bzero (struct ifmediareq*,int) ;
 scalar_t__ ifnet_ioctl (struct ifnet*,int ,int ,struct ifmediareq*) ;

__attribute__((used)) static int
interface_media_active(struct ifnet *ifp)
{
 struct ifmediareq ifmr;
 int status = 0;

 bzero(&ifmr, sizeof(ifmr));
 if (ifnet_ioctl(ifp, 0, SIOCGIFMEDIA, &ifmr) == 0) {
  if ((ifmr.ifm_status & IFM_AVALID) && ifmr.ifm_count > 0)
   status = ifmr.ifm_status & IFM_ACTIVE ? 1 : 0;
 }

 return (status);
}
