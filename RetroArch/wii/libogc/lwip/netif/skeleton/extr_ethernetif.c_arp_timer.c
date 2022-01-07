
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARP_TMR_INTERVAL ;
 int etharp_tmr () ;
 int sys_timeout (int ,void (*) (void*),int *) ;

__attribute__((used)) static void
arp_timer(void *arg)
{
  etharp_tmr();
  sys_timeout(ARP_TMR_INTERVAL, arp_timer, ((void*)0));
}
