
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_info {scalar_t__ ifm_count; int ifm_active; int mi_active; int ifm_status; int mi_status; } ;
struct ifnet {int dummy; } ;
struct ifmediareq {scalar_t__ ifm_count; int ifm_active; int mi_active; int ifm_status; int mi_status; } ;
typedef int mi ;
typedef int ifmr ;


 int SIOCGIFMEDIA ;
 int bzero (struct media_info*,int) ;
 scalar_t__ ifnet_ioctl (struct ifnet*,int ,int ,struct media_info*) ;

__attribute__((used)) static struct media_info
interface_media_info(struct ifnet * ifp)
{
    struct ifmediareq ifmr;
    struct media_info mi;

    bzero(&mi, sizeof(mi));
    bzero(&ifmr, sizeof(ifmr));
    if (ifnet_ioctl(ifp, 0, SIOCGIFMEDIA, &ifmr) == 0) {
 if (ifmr.ifm_count != 0) {
     mi.mi_status = ifmr.ifm_status;
     mi.mi_active = ifmr.ifm_active;
 }
    }
    return (mi);
}
