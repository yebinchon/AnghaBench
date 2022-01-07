
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int dummy; } ;
struct ifmediareq {scalar_t__ ifm_count; int ifm_status; int ifm_name; } ;
typedef int ifmr ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int KEV_DL_LINK_OFF ;
 int KEV_DL_LINK_ON ;
 int SIOCGIFMEDIA ;
 int bzero (struct ifmediareq*,int) ;
 scalar_t__ ifnet_ioctl (struct ifnet*,int ,int ,struct ifmediareq*) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int interface_link_event (struct ifnet*,int ) ;
 int snprintf (int ,int,char*,char*,int ) ;

__attribute__((used)) static void
vlan_link_event(struct ifnet * ifp, struct ifnet * p)
{
    struct ifmediareq ifmr;


    bzero(&ifmr, sizeof(ifmr));
    snprintf(ifmr.ifm_name, sizeof(ifmr.ifm_name),
      "%s%d", ifnet_name(p), ifnet_unit(p));
    if (ifnet_ioctl(p, 0, SIOCGIFMEDIA, &ifmr) == 0
 && ifmr.ifm_count > 0 && ifmr.ifm_status & IFM_AVALID) {
 u_int32_t event;

 event = (ifmr.ifm_status & IFM_ACTIVE)
     ? KEV_DL_LINK_ON : KEV_DL_LINK_OFF;
 interface_link_event(ifp, event);
    }
    return;
}
