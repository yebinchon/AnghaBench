
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet_llreach_info {int iflri_npm; int iflri_lqm; int iflri_rssi; int iflri_addr; int iflri_netproto; int iflri_curtime; int iflri_rcv_expire; int iflri_probes; int iflri_refcnt; } ;
struct TYPE_2__ {int proto; int addr; } ;
struct if_llreach {int lr_npm; int lr_lqm; int lr_rssi; TYPE_1__ lr_key; int lr_lastrcvd; int lr_probes; int lr_reqcnt; } ;




 int IFLR_LOCK_ASSERT_HELD (struct if_llreach*) ;
 int IF_LLREACH_MAXLEN ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNSPEC ;
 int bcopy (int *,int *,int ) ;
 int bzero (struct ifnet_llreach_info*,int) ;
 int ifnet_llreach_up2upexp (struct if_llreach*,int ) ;
 int net_uptime () ;

void
ifnet_lr2iflri(struct if_llreach *lr, struct ifnet_llreach_info *iflri)
{
 IFLR_LOCK_ASSERT_HELD(lr);

 bzero(iflri, sizeof (*iflri));



 iflri->iflri_refcnt = lr->lr_reqcnt;
 iflri->iflri_probes = lr->lr_probes;
 iflri->iflri_rcv_expire = ifnet_llreach_up2upexp(lr, lr->lr_lastrcvd);
 iflri->iflri_curtime = net_uptime();
 switch (lr->lr_key.proto) {
 case 129:
  iflri->iflri_netproto = PF_INET;
  break;
 case 128:
  iflri->iflri_netproto = PF_INET6;
  break;
 default:





  iflri->iflri_netproto = PF_UNSPEC;
  break;
 }
 bcopy(&lr->lr_key.addr, &iflri->iflri_addr, IF_LLREACH_MAXLEN);
 iflri->iflri_rssi = lr->lr_rssi;
 iflri->iflri_lqm = lr->lr_lqm;
 iflri->iflri_npm = lr->lr_npm;
}
