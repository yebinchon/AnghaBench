
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct if_llreach_info {int lri_npm; int lri_lqm; int lri_rssi; int lri_addr; int lri_proto; int lri_expire; int lri_probes; int lri_ifindex; int lri_refcnt; } ;
struct TYPE_4__ {int addr; int proto; } ;
struct if_llreach {int lr_npm; int lr_lqm; int lr_rssi; TYPE_2__ lr_key; int lr_lastrcvd; int lr_probes; TYPE_1__* lr_ifp; int lr_reqcnt; } ;
struct TYPE_3__ {int if_index; } ;


 int IFLR_LOCK_ASSERT_HELD (struct if_llreach*) ;
 int IF_LLREACH_MAXLEN ;
 int bcopy (int *,int *,int ) ;
 int bzero (struct if_llreach_info*,int) ;
 int ifnet_llreach_up2calexp (struct if_llreach*,int ) ;

void
ifnet_lr2lri(struct if_llreach *lr, struct if_llreach_info *lri)
{
 IFLR_LOCK_ASSERT_HELD(lr);

 bzero(lri, sizeof (*lri));



 lri->lri_refcnt = lr->lr_reqcnt;
 lri->lri_ifindex = lr->lr_ifp->if_index;
 lri->lri_probes = lr->lr_probes;
 lri->lri_expire = ifnet_llreach_up2calexp(lr, lr->lr_lastrcvd);
 lri->lri_proto = lr->lr_key.proto;
 bcopy(&lr->lr_key.addr, &lri->lri_addr, IF_LLREACH_MAXLEN);
 lri->lri_rssi = lr->lr_rssi;
 lri->lri_lqm = lr->lr_lqm;
 lri->lri_npm = lr->lr_npm;
}
