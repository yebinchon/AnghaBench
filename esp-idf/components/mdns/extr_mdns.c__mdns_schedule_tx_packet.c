
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ send_at; struct TYPE_4__* next; } ;
typedef TYPE_1__ mdns_tx_packet_t ;
struct TYPE_5__ {TYPE_1__* tx_queue_head; } ;


 TYPE_2__* _mdns_server ;
 int portTICK_PERIOD_MS ;
 int xTaskGetTickCount () ;

__attribute__((used)) static void _mdns_schedule_tx_packet(mdns_tx_packet_t * packet, uint32_t ms_after)
{
    if (!packet) {
        return;
    }
    packet->send_at = (xTaskGetTickCount() * portTICK_PERIOD_MS) + ms_after;
    packet->next = ((void*)0);
    if (!_mdns_server->tx_queue_head || _mdns_server->tx_queue_head->send_at > packet->send_at) {
        packet->next = _mdns_server->tx_queue_head;
        _mdns_server->tx_queue_head = packet;
        return;
    }
    mdns_tx_packet_t * q = _mdns_server->tx_queue_head;
    while (q->next && q->next->send_at <= packet->send_at) {
        q = q->next;
    }
    packet->next = q->next;
    q->next = packet;
}
