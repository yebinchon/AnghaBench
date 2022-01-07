
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LWIP_LOGI (char*) ;
 int dbg_lwip_tcp_pcb_list_show (int ) ;
 int tcp_active_pcbs ;
 int tcp_bound_pcbs ;
 int tcp_tw_pcbs ;

void dbg_lwip_tcp_pcb_show(void)
{
    ESP_LWIP_LOGI("-------------active pcbs------------");
    dbg_lwip_tcp_pcb_list_show(tcp_active_pcbs);
    ESP_LWIP_LOGI("-------------bound pcbs-------------");
    dbg_lwip_tcp_pcb_list_show(tcp_bound_pcbs);
    ESP_LWIP_LOGI("-------------tw     pcbs------------");
    dbg_lwip_tcp_pcb_list_show(tcp_tw_pcbs);
}
