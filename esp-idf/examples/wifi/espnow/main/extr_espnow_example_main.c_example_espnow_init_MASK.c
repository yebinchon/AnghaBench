#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int encrypt; int unicast; int broadcast; int len; int /*<<< orphan*/  dest_mac; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  delay; int /*<<< orphan*/  count; int /*<<< orphan*/  magic; scalar_t__ state; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  ifidx; int /*<<< orphan*/  channel; } ;
typedef  TYPE_1__ example_espnow_send_param_t ;
typedef  int /*<<< orphan*/  example_espnow_event_t ;
typedef  TYPE_1__ esp_now_peer_info_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ESPNOW_CHANNEL ; 
 scalar_t__ CONFIG_ESPNOW_PMK ; 
 int /*<<< orphan*/  CONFIG_ESPNOW_SEND_COUNT ; 
 int /*<<< orphan*/  CONFIG_ESPNOW_SEND_DELAY ; 
 int CONFIG_ESPNOW_SEND_LEN ; 
 int /*<<< orphan*/  ESPNOW_QUEUE_SIZE ; 
 int /*<<< orphan*/  ESPNOW_WIFI_IF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_NOW_ETH_ALEN ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  example_espnow_recv_cb ; 
 int /*<<< orphan*/  example_espnow_send_cb ; 
 int /*<<< orphan*/  example_espnow_task ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_example_broadcast_mac ; 
 int /*<<< orphan*/ * s_example_espnow_queue ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC17(void)
{
    example_espnow_send_param_t *send_param;

    s_example_espnow_queue = FUNC15(ESPNOW_QUEUE_SIZE, sizeof(example_espnow_event_t));
    if (s_example_espnow_queue == NULL) {
        FUNC1(TAG, "Create mutex fail");
        return ESP_FAIL;
    }

    /* Initialize ESPNOW and register sending and receiving callback function. */
    FUNC0( FUNC4() );
    FUNC0( FUNC6(example_espnow_send_cb) );
    FUNC0( FUNC5(example_espnow_recv_cb) );

    /* Set primary master key. */
    FUNC0( FUNC7((uint8_t *)CONFIG_ESPNOW_PMK) );

    /* Add broadcast peer information to peer list. */
    esp_now_peer_info_t *peer = FUNC11(sizeof(esp_now_peer_info_t));
    if (peer == NULL) {
        FUNC1(TAG, "Malloc peer information fail");
        FUNC14(s_example_espnow_queue);
        FUNC3();
        return ESP_FAIL;
    }
    FUNC13(peer, 0, sizeof(esp_now_peer_info_t));
    peer->channel = CONFIG_ESPNOW_CHANNEL;
    peer->ifidx = ESPNOW_WIFI_IF;
    peer->encrypt = false;
    FUNC12(peer->peer_addr, s_example_broadcast_mac, ESP_NOW_ETH_ALEN);
    FUNC0( FUNC2(peer) );
    FUNC10(peer);

    /* Initialize sending parameters. */
    send_param = FUNC11(sizeof(example_espnow_send_param_t));
    FUNC13(send_param, 0, sizeof(example_espnow_send_param_t));
    if (send_param == NULL) {
        FUNC1(TAG, "Malloc send parameter fail");
        FUNC14(s_example_espnow_queue);
        FUNC3();
        return ESP_FAIL;
    }
    send_param->unicast = false;
    send_param->broadcast = true;
    send_param->state = 0;
    send_param->magic = FUNC8();
    send_param->count = CONFIG_ESPNOW_SEND_COUNT;
    send_param->delay = CONFIG_ESPNOW_SEND_DELAY;
    send_param->len = CONFIG_ESPNOW_SEND_LEN;
    send_param->buffer = FUNC11(CONFIG_ESPNOW_SEND_LEN);
    if (send_param->buffer == NULL) {
        FUNC1(TAG, "Malloc send buffer fail");
        FUNC10(send_param);
        FUNC14(s_example_espnow_queue);
        FUNC3();
        return ESP_FAIL;
    }
    FUNC12(send_param->dest_mac, s_example_broadcast_mac, ESP_NOW_ETH_ALEN);
    FUNC9(send_param);

    FUNC16(example_espnow_task, "example_espnow_task", 2048, send_param, 4, NULL);

    return ESP_OK;
}