
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {int lock; int action_queue; } ;
typedef TYPE_2__ mdns_server_t ;
typedef int mdns_action_t ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_9__ {TYPE_1__ ip; } ;
typedef TYPE_3__ esp_netif_ip_info_t ;
typedef int esp_ip6_addr_t ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_EVENT_ANY_ID ;
 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_EVENT ;
 int HOOK_MALLOC_FAILED ;
 int IP_EVENT ;
 int MDNS_ACTION_QUEUE_LEN ;
 scalar_t__ MDNS_IF_MAX ;
 int MDNS_IP_PROTOCOL_V4 ;
 int MDNS_IP_PROTOCOL_V6 ;
 int WIFI_EVENT ;
 int _ipv6_address_is_zero (int ) ;
 int _mdns_disable_pcb (scalar_t__,int ) ;
 int _mdns_enable_pcb (scalar_t__,int ) ;
 int _mdns_get_esp_netif (scalar_t__) ;
 TYPE_2__* _mdns_server ;
 scalar_t__ _mdns_service_task_start () ;
 int esp_event_handler_register (int ,int ,int *,int *) ;
 int esp_event_handler_unregister (int ,int ,int *) ;
 int esp_netif_get_ip6_linklocal (int ,int *) ;
 int esp_netif_get_ip_info (int ,TYPE_3__*) ;
 int event_handler ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (scalar_t__*,int ,int) ;
 int vQueueDelete (int ) ;
 int vSemaphoreDelete (int ) ;
 int xQueueCreate (int ,int) ;
 int xSemaphoreCreateMutex () ;

esp_err_t mdns_init(void)
{
    esp_err_t err = ESP_OK;

    if (_mdns_server) {
        return err;
    }

    _mdns_server = (mdns_server_t *)malloc(sizeof(mdns_server_t));
    if (!_mdns_server) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }
    memset((uint8_t*)_mdns_server, 0, sizeof(mdns_server_t));

    _mdns_server->lock = xSemaphoreCreateMutex();
    if (!_mdns_server->lock) {
        err = ESP_ERR_NO_MEM;
        goto free_server;
    }

    _mdns_server->action_queue = xQueueCreate(MDNS_ACTION_QUEUE_LEN, sizeof(mdns_action_t *));
    if (!_mdns_server->action_queue) {
        err = ESP_ERR_NO_MEM;
        goto free_lock;
    }
    if ((err = esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, ((void*)0))) != ESP_OK) {
        goto free_event_handlers;
    }
    if ((err = esp_event_handler_register(IP_EVENT, ESP_EVENT_ANY_ID, &event_handler, ((void*)0))) != ESP_OK) {
        goto free_event_handlers;
    }





    uint8_t i;
    esp_ip6_addr_t tmp_addr6;
    esp_netif_ip_info_t if_ip_info;

    for (i=0; i<MDNS_IF_MAX; i++) {
        if (!esp_netif_get_ip6_linklocal(_mdns_get_esp_netif(i), &tmp_addr6) && !_ipv6_address_is_zero(tmp_addr6)) {
            _mdns_enable_pcb(i, MDNS_IP_PROTOCOL_V6);
        }
        if (!esp_netif_get_ip_info(_mdns_get_esp_netif(i), &if_ip_info) && if_ip_info.ip.addr) {
            _mdns_enable_pcb(i, MDNS_IP_PROTOCOL_V4);
        }
    }

    if (_mdns_service_task_start()) {

        err = ESP_FAIL;
        goto free_all_and_disable_pcbs;
    }

    return ESP_OK;

free_all_and_disable_pcbs:
    for (i=0; i<MDNS_IF_MAX; i++) {
        _mdns_disable_pcb(i, MDNS_IP_PROTOCOL_V6);
        _mdns_disable_pcb(i, MDNS_IP_PROTOCOL_V4);
    }
free_event_handlers:
    esp_event_handler_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler);
    esp_event_handler_unregister(IP_EVENT, ESP_EVENT_ANY_ID, &event_handler);



    vQueueDelete(_mdns_server->action_queue);
free_lock:
    vSemaphoreDelete(_mdns_server->lock);
free_server:
    free(_mdns_server);
    _mdns_server = ((void*)0);
    return err;
}
