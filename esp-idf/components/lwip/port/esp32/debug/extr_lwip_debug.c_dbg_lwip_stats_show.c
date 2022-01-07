
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETHARP_STATS_DISPLAY () ;
 int ICMP6_STATS_DISPLAY () ;
 int ICMP_STATS_DISPLAY () ;
 int IGMP_STATS_DISPLAY () ;
 int IP6_FRAG_STATS_DISPLAY () ;
 int IP6_STATS_DISPLAY () ;
 int IPFRAG_STATS_DISPLAY () ;
 int IP_STATS_DISPLAY () ;
 int LINK_STATS_DISPLAY () ;
 int MEM_STATS_DISPLAY () ;
 int MLD6_STATS_DISPLAY () ;
 int ND6_STATS_DISPLAY () ;
 int SYS_STATS_DISPLAY () ;
 int TCP_STATS_DISPLAY () ;
 int UDP_STATS_DISPLAY () ;

void dbg_lwip_stats_show(void)
{
    TCP_STATS_DISPLAY();
    UDP_STATS_DISPLAY();
    ICMP_STATS_DISPLAY();
    IGMP_STATS_DISPLAY();
    IP_STATS_DISPLAY();
    IPFRAG_STATS_DISPLAY();
    ETHARP_STATS_DISPLAY();
    LINK_STATS_DISPLAY();
    MEM_STATS_DISPLAY();
    SYS_STATS_DISPLAY();
    IP6_STATS_DISPLAY();
    ICMP6_STATS_DISPLAY();
    IP6_FRAG_STATS_DISPLAY();
    MLD6_STATS_DISPLAY();
    ND6_STATS_DISPLAY();
}
