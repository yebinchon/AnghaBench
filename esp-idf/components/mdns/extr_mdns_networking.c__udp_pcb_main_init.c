
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_6__ {int mcast_ttl; int remote_ip; int remote_port; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int IP_ANY_TYPE ;
 int MDNS_SERVICE_PORT ;
 int _mdns_server ;
 TYPE_1__* _pcb_main ;
 int _udp_recv ;
 int ip_addr_any_type ;
 int ip_addr_copy (int ,int ) ;
 scalar_t__ udp_bind (TYPE_1__*,int ,int ) ;
 TYPE_1__* udp_new () ;
 int udp_recv (TYPE_1__*,int *,int ) ;
 int udp_remove (TYPE_1__*) ;

__attribute__((used)) static esp_err_t _udp_pcb_main_init(void)
{
    if(_pcb_main) {
        return ESP_OK;
    }
    _pcb_main = udp_new();
    if (!_pcb_main) {
        return ESP_ERR_NO_MEM;
    }
    if (udp_bind(_pcb_main, IP_ANY_TYPE, MDNS_SERVICE_PORT) != 0) {
        udp_remove(_pcb_main);
        _pcb_main = ((void*)0);
        return ESP_ERR_INVALID_STATE;
    }
    _pcb_main->mcast_ttl = 1;
    _pcb_main->remote_port = MDNS_SERVICE_PORT;
    ip_addr_copy(_pcb_main->remote_ip, ip_addr_any_type);
    udp_recv(_pcb_main, &_udp_recv, _mdns_server);
    return ESP_OK;
}
