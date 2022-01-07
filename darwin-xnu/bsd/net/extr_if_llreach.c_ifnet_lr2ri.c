
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_reach_info {int ri_npm; int ri_lqm; int ri_rssi; int ri_rcv_expire; int ri_probes; int ri_refcnt; } ;
struct if_llreach_info {int lri_npm; int lri_lqm; int lri_rssi; int lri_expire; int lri_probes; int lri_refcnt; } ;
struct if_llreach {int dummy; } ;


 int IFLR_LOCK_ASSERT_HELD (struct if_llreach*) ;
 int bzero (struct rt_reach_info*,int) ;
 int ifnet_lr2lri (struct if_llreach*,struct if_llreach_info*) ;

void
ifnet_lr2ri(struct if_llreach *lr, struct rt_reach_info *ri)
{
 struct if_llreach_info lri;

 IFLR_LOCK_ASSERT_HELD(lr);

 bzero(ri, sizeof (*ri));
 ifnet_lr2lri(lr, &lri);
 ri->ri_refcnt = lri.lri_refcnt;
 ri->ri_probes = lri.lri_probes;
 ri->ri_rcv_expire = lri.lri_expire;
 ri->ri_rssi = lri.lri_rssi;
 ri->ri_lqm = lri.lri_lqm;
 ri->ri_npm = lri.lri_npm;
}
