
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {struct llinfo_arp* rt_llinfo; } ;
struct rt_reach_info {int ri_snd_expire; int ri_npm; int ri_lqm; int ri_rssi; } ;
struct llinfo_arp {int la_lastused; struct if_llreach* la_llreach; } ;
struct if_llreach {int dummy; } ;


 int IFLR_LOCK (struct if_llreach*) ;
 int IFLR_UNLOCK (struct if_llreach*) ;
 int IFNET_LQM_THRESH_OFF ;
 int IFNET_NPM_THRESH_UNKNOWN ;
 int IFNET_RSSI_UNKNOWN ;
 int bzero (struct rt_reach_info*,int) ;
 int ifnet_llreach_up2calexp (struct if_llreach*,int ) ;
 int ifnet_lr2ri (struct if_llreach*,struct rt_reach_info*) ;

__attribute__((used)) static void
arp_llinfo_get_ri(struct rtentry *rt, struct rt_reach_info *ri)
{
 struct llinfo_arp *la = rt->rt_llinfo;
 struct if_llreach *lr = la->la_llreach;

 if (lr == ((void*)0)) {
  bzero(ri, sizeof (*ri));
  ri->ri_rssi = IFNET_RSSI_UNKNOWN;
  ri->ri_lqm = IFNET_LQM_THRESH_OFF;
  ri->ri_npm = IFNET_NPM_THRESH_UNKNOWN;
 } else {
  IFLR_LOCK(lr);

  ifnet_lr2ri(lr, ri);

  ri->ri_snd_expire =
      ifnet_llreach_up2calexp(lr, la->la_lastused);
  IFLR_UNLOCK(lr);
 }
}
