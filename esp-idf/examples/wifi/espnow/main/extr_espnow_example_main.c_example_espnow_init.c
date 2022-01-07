
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int encrypt; int unicast; int broadcast; int len; int dest_mac; int * buffer; int delay; int count; int magic; scalar_t__ state; int peer_addr; int ifidx; int channel; } ;
typedef TYPE_1__ example_espnow_send_param_t ;
typedef int example_espnow_event_t ;
typedef TYPE_1__ esp_now_peer_info_t ;
typedef int esp_err_t ;


 int CONFIG_ESPNOW_CHANNEL ;
 scalar_t__ CONFIG_ESPNOW_PMK ;
 int CONFIG_ESPNOW_SEND_COUNT ;
 int CONFIG_ESPNOW_SEND_DELAY ;
 int CONFIG_ESPNOW_SEND_LEN ;
 int ESPNOW_QUEUE_SIZE ;
 int ESPNOW_WIFI_IF ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_NOW_ETH_ALEN ;
 int ESP_OK ;
 int TAG ;
 int esp_now_add_peer (TYPE_1__*) ;
 int esp_now_deinit () ;
 int esp_now_init () ;
 int esp_now_register_recv_cb (int ) ;
 int esp_now_register_send_cb (int ) ;
 int esp_now_set_pmk (int *) ;
 int esp_random () ;
 int example_espnow_data_prepare (TYPE_1__*) ;
 int example_espnow_recv_cb ;
 int example_espnow_send_cb ;
 int example_espnow_task ;
 int free (TYPE_1__*) ;
 void* malloc (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int s_example_broadcast_mac ;
 int * s_example_espnow_queue ;
 int vSemaphoreDelete (int *) ;
 int * xQueueCreate (int ,int) ;
 int xTaskCreate (int ,char*,int,TYPE_1__*,int,int *) ;

__attribute__((used)) static esp_err_t example_espnow_init(void)
{
    example_espnow_send_param_t *send_param;

    s_example_espnow_queue = xQueueCreate(ESPNOW_QUEUE_SIZE, sizeof(example_espnow_event_t));
    if (s_example_espnow_queue == ((void*)0)) {
        ESP_LOGE(TAG, "Create mutex fail");
        return ESP_FAIL;
    }


    ESP_ERROR_CHECK( esp_now_init() );
    ESP_ERROR_CHECK( esp_now_register_send_cb(example_espnow_send_cb) );
    ESP_ERROR_CHECK( esp_now_register_recv_cb(example_espnow_recv_cb) );


    ESP_ERROR_CHECK( esp_now_set_pmk((uint8_t *)CONFIG_ESPNOW_PMK) );


    esp_now_peer_info_t *peer = malloc(sizeof(esp_now_peer_info_t));
    if (peer == ((void*)0)) {
        ESP_LOGE(TAG, "Malloc peer information fail");
        vSemaphoreDelete(s_example_espnow_queue);
        esp_now_deinit();
        return ESP_FAIL;
    }
    memset(peer, 0, sizeof(esp_now_peer_info_t));
    peer->channel = CONFIG_ESPNOW_CHANNEL;
    peer->ifidx = ESPNOW_WIFI_IF;
    peer->encrypt = 0;
    memcpy(peer->peer_addr, s_example_broadcast_mac, ESP_NOW_ETH_ALEN);
    ESP_ERROR_CHECK( esp_now_add_peer(peer) );
    free(peer);


    send_param = malloc(sizeof(example_espnow_send_param_t));
    memset(send_param, 0, sizeof(example_espnow_send_param_t));
    if (send_param == ((void*)0)) {
        ESP_LOGE(TAG, "Malloc send parameter fail");
        vSemaphoreDelete(s_example_espnow_queue);
        esp_now_deinit();
        return ESP_FAIL;
    }
    send_param->unicast = 0;
    send_param->broadcast = 1;
    send_param->state = 0;
    send_param->magic = esp_random();
    send_param->count = CONFIG_ESPNOW_SEND_COUNT;
    send_param->delay = CONFIG_ESPNOW_SEND_DELAY;
    send_param->len = CONFIG_ESPNOW_SEND_LEN;
    send_param->buffer = malloc(CONFIG_ESPNOW_SEND_LEN);
    if (send_param->buffer == ((void*)0)) {
        ESP_LOGE(TAG, "Malloc send buffer fail");
        free(send_param);
        vSemaphoreDelete(s_example_espnow_queue);
        esp_now_deinit();
        return ESP_FAIL;
    }
    memcpy(send_param->dest_mac, s_example_broadcast_mac, ESP_NOW_ETH_ALEN);
    example_espnow_data_prepare(send_param);

    xTaskCreate(example_espnow_task, "example_espnow_task", 2048, send_param, 4, ((void*)0));

    return ESP_OK;
}
