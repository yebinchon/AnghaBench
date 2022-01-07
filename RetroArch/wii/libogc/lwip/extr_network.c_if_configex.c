
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct netif {int dummy; } ;
struct ip_addr {scalar_t__ addr; } ;
struct in_addr {scalar_t__ s_addr; } ;
typedef int s32 ;
typedef int * dev_s ;
struct TYPE_12__ {scalar_t__ addr; } ;
struct TYPE_11__ {scalar_t__ addr; } ;
struct TYPE_10__ {scalar_t__ addr; } ;
struct TYPE_13__ {TYPE_4__ netmask; TYPE_3__ gw; TYPE_2__ ip_addr; TYPE_1__* dhcp; } ;
struct TYPE_9__ {scalar_t__ state; } ;


 int DHCPCOARSE_TIMER_ID ;
 int DHCPFINE_TIMER_ID ;
 scalar_t__ DHCP_BOUND ;
 scalar_t__ DHCP_COARSE_TIMER_SECS ;
 int DHCP_FINE_TIMER_MSECS ;
 int EINVAL ;
 int ENXIO ;
 int ETIMEDOUT ;
 int FALSE ;
 int IP4_ADDR (struct ip_addr*,int,int ,int ,int) ;
 int MQBOX_SIZE ;
 scalar_t__ MQ_ERROR_SUCCESSFUL ;
 scalar_t__ MQ_Init (int *,int ) ;
 int TB_NSPERMS ;
 int TRUE ;
 int __dhcpcoarse_timer ;
 int __dhcpfine_timer ;
 int __lwp_wd_calc_ticks (struct timespec*) ;
 int __lwp_wd_initialize (int *,int ,int ,int *) ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 int * bba_create (TYPE_5__*) ;
 int bba_init ;
 int dhcp_coarsetimer_cntrl ;
 int dhcp_finetimer_cntrl ;
 int dhcp_start (struct netif*) ;
 TYPE_5__ g_hLoopIF ;
 TYPE_5__ g_hNetIF ;
 int g_netinitiated ;
 int loopif_init ;
 int mem_init () ;
 int memp_init () ;
 int net_dhcpcoarse_ticks ;
 int net_dhcpfine_ticks ;
 int net_init () ;
 int net_input ;
 struct netif* netif_add (TYPE_5__*,struct ip_addr*,struct ip_addr*,struct ip_addr*,int *,int ,int ) ;
 int netif_init () ;
 int netif_set_default (struct netif*) ;
 int netif_set_up (struct netif*) ;
 int netthread_mbox ;
 int pbuf_init () ;
 int stats_init () ;
 int sys_init () ;
 int usleep (int) ;

s32 if_configex(struct in_addr *local_ip,struct in_addr *netmask,struct in_addr *gateway,bool use_dhcp, int max_retries)
{
 s32 ret = 0;
 struct ip_addr loc_ip, mask, gw;
 struct netif *pnet;
 struct timespec tb;
 dev_s hbba = ((void*)0);

 if(g_netinitiated) return 0;
 g_netinitiated = 1;






 sys_init();
 mem_init();
 memp_init();
 pbuf_init();
 netif_init();


 if(MQ_Init(&netthread_mbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) return -1;


 loc_ip.addr = 0;
 mask.addr = 0;
 gw.addr = 0;

 if(use_dhcp==FALSE) {
  if( !gateway || gateway->s_addr==0
   || !local_ip || local_ip->s_addr==0
   || !netmask || netmask->s_addr==0 ) return -EINVAL;
   loc_ip.addr = local_ip->s_addr;
   mask.addr = netmask->s_addr;
   gw.addr = gateway->s_addr;
 }
 hbba = bba_create(&g_hNetIF);
 pnet = netif_add(&g_hNetIF,&loc_ip, &mask, &gw, hbba, bba_init, net_input);
 if(pnet) {
  netif_set_up(pnet);
  netif_set_default(pnet);
 } else
  return -ENXIO;


 IP4_ADDR(&loc_ip, 127, 0, 0, 1);
 IP4_ADDR(&mask, 255, 0, 0, 0);
 IP4_ADDR(&gw, 127, 0, 0, 1);
 pnet = netif_add(&g_hLoopIF, &loc_ip, &mask, &gw, ((void*)0), loopif_init, net_input);


 ret = net_init();

 if ( ret == 0 && use_dhcp == TRUE ) {

  int retries = max_retries;

  while ( g_hNetIF.dhcp->state != DHCP_BOUND && retries > 0 ) {
   retries--;
   usleep(500000);
  }

  if ( retries > 0 ) {

   if ( local_ip != ((void*)0) ) local_ip->s_addr = g_hNetIF.ip_addr.addr;
   if ( gateway != ((void*)0) ) gateway->s_addr = g_hNetIF.gw.addr;
   if ( netmask != ((void*)0) ) netmask->s_addr = g_hNetIF.netmask.addr;
  } else {
   ret = -ETIMEDOUT;
  }
 }

 return ret;
}
