
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int mdns_srv_item_t ;
typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;
struct TYPE_6__ {TYPE_1__* interfaces; int hostname; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ pcb; } ;
struct TYPE_4__ {TYPE_2__* pcbs; } ;


 size_t MDNS_IF_MAX ;
 size_t MDNS_IP_PROTOCOL_MAX ;
 scalar_t__ PCB_RUNNING ;
 int _mdns_pcb_send_bye (int ,int ,int **,size_t,int) ;
 TYPE_3__* _mdns_server ;
 scalar_t__ _str_null_or_empty (int ) ;

__attribute__((used)) static void _mdns_send_bye(mdns_srv_item_t ** services, size_t len, bool include_ip)
{
    uint8_t i, j;
    if (_str_null_or_empty(_mdns_server->hostname)) {
        return;
    }

    for (i=0; i<MDNS_IF_MAX; i++) {
        for (j=0; j<MDNS_IP_PROTOCOL_MAX; j++) {
            if (_mdns_server->interfaces[i].pcbs[j].pcb && _mdns_server->interfaces[i].pcbs[j].state == PCB_RUNNING) {
                _mdns_pcb_send_bye((mdns_if_t)i, (mdns_ip_protocol_t)j, services, len, include_ip);
            }
        }
    }
}
