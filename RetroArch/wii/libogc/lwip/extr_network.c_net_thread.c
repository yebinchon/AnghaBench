
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sys_sem ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_5__ {int ctx; int (* f ) (int ) ;} ;
struct TYPE_4__ {int net; int p; } ;
struct TYPE_6__ {TYPE_2__ cb; TYPE_1__ inp; int apimsg; } ;
struct net_msg {int type; TYPE_3__ msg; } ;
typedef int mqmsg_t ;


 int ARP_TIMER_ID ;
 int ARP_TMR_INTERVAL ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemPost (int ) ;
 int MEMP_TCPIP_MSG ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (int ,int ,int ) ;



 int TB_MSPERSEC ;
 int TB_NSPERMS ;
 int TCPIP_DEBUG ;
 int TCP_TIMER_ID ;
 int TCP_TMR_INTERVAL ;
 int __arp_timer ;
 void* __lwp_wd_calc_ticks (struct timespec*) ;
 int __lwp_wd_initialize (int *,int ,int ,int *) ;
 int __lwp_wd_insert_ticks (int *,void*) ;
 int __tcp_timer ;
 int apimsg_input (int ) ;
 int arp_time_cntrl ;
 int bba_process (int ,int ) ;
 int etharp_init () ;
 int ip_init () ;
 int memp_free (int ,struct net_msg*) ;
 void* net_arp_ticks ;
 void* net_tcp_ticks ;
 int netthread_mbox ;
 int stub1 (int ) ;
 int tcp_init () ;
 int tcp_timer_cntrl ;
 int udp_init () ;

__attribute__((used)) static void* net_thread(void *arg)
{
 struct net_msg *msg;
 struct timespec tb;
 sys_sem sem = (sys_sem)arg;

 etharp_init();
 ip_init();
 udp_init();
 tcp_init();

 tb.tv_sec = ARP_TMR_INTERVAL/TB_MSPERSEC;
 tb.tv_nsec = 0;
 net_arp_ticks = __lwp_wd_calc_ticks(&tb);
 __lwp_wd_initialize(&arp_time_cntrl,__arp_timer,ARP_TIMER_ID,((void*)0));
 __lwp_wd_insert_ticks(&arp_time_cntrl,net_arp_ticks);

 tb.tv_sec = 0;
 tb.tv_nsec = TCP_TMR_INTERVAL*TB_NSPERMS;
 net_tcp_ticks = __lwp_wd_calc_ticks(&tb);
 __lwp_wd_initialize(&tcp_timer_cntrl,__tcp_timer,TCP_TIMER_ID,((void*)0));

 LWP_SemPost(sem);

 LWIP_DEBUGF(TCPIP_DEBUG, ("net_thread(%p)\n",arg));

 while(1) {
  MQ_Receive(netthread_mbox,(mqmsg_t)&msg,MQ_MSG_BLOCK);
  switch(msg->type) {
   case 130:
       LWIP_DEBUGF(TCPIP_DEBUG, ("net_thread: API message %p\n", (void *)msg));
    apimsg_input(msg->msg.apimsg);
    break;
   case 128:
       LWIP_DEBUGF(TCPIP_DEBUG, ("net_thread: IP packet %p\n", (void *)msg));
    bba_process(msg->msg.inp.p,msg->msg.inp.net);
    break;
   case 129:
       LWIP_DEBUGF(TCPIP_DEBUG, ("net_thread: CALLBACK %p\n", (void *)msg));
    msg->msg.cb.f(msg->msg.cb.ctx);
    break;
   default:
    break;
  }
  memp_free(MEMP_TCPIP_MSG,msg);
 }
 return ((void*)0);
}
