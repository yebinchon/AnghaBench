
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbuf_report_peak_usage () ;
 int nstat_ifnet_report_ecn_stats () ;
 int nstat_ifnet_report_lim_stats () ;
 int nstat_net_api_report_stats () ;
 int tcp_report_stats () ;

__attribute__((used)) static void
nstat_sysinfo_generate_report(void)
{
 mbuf_report_peak_usage();
 tcp_report_stats();
 nstat_ifnet_report_ecn_stats();
 nstat_ifnet_report_lim_stats();
 nstat_net_api_report_stats();
}
