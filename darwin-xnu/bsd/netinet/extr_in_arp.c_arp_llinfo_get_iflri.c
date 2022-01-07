
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {struct llinfo_arp* rt_llinfo; } ;
struct llinfo_arp {int la_lastused; struct if_llreach* la_llreach; } ;
struct ifnet_llreach_info {int iflri_snd_expire; int iflri_npm; int iflri_lqm; int iflri_rssi; } ;
struct if_llreach {int dummy; } ;


 int IFLR_LOCK (struct if_llreach*) ;
 int IFLR_UNLOCK (struct if_llreach*) ;
 int IFNET_LQM_THRESH_OFF ;
 int IFNET_NPM_THRESH_UNKNOWN ;
 int IFNET_RSSI_UNKNOWN ;
 int bzero (struct ifnet_llreach_info*,int) ;
 int ifnet_llreach_up2upexp (struct if_llreach*,int ) ;
 int ifnet_lr2iflri (struct if_llreach*,struct ifnet_llreach_info*) ;

__attribute__((used)) static void
arp_llinfo_get_iflri(struct rtentry *rt, struct ifnet_llreach_info *iflri)
{
 struct llinfo_arp *la = rt->rt_llinfo;
 struct if_llreach *lr = la->la_llreach;

 if (lr == ((void*)0)) {
  bzero(iflri, sizeof (*iflri));
  iflri->iflri_rssi = IFNET_RSSI_UNKNOWN;
  iflri->iflri_lqm = IFNET_LQM_THRESH_OFF;
  iflri->iflri_npm = IFNET_NPM_THRESH_UNKNOWN;
 } else {
  IFLR_LOCK(lr);

  ifnet_lr2iflri(lr, iflri);

  iflri->iflri_snd_expire =
      ifnet_llreach_up2upexp(lr, la->la_lastused);
  IFLR_UNLOCK(lr);
 }
}
