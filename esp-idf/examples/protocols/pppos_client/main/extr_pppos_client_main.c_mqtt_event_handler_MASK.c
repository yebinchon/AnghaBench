#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* esp_mqtt_event_handle_t ;
typedef  int /*<<< orphan*/  esp_mqtt_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int event_id; int msg_id; char* topic_len; char* data_len; int /*<<< orphan*/  data; int /*<<< orphan*/  topic; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  GOT_DATA_BIT ; 
#define  MQTT_EVENT_CONNECTED 134 
#define  MQTT_EVENT_DATA 133 
#define  MQTT_EVENT_DISCONNECTED 132 
#define  MQTT_EVENT_ERROR 131 
#define  MQTT_EVENT_PUBLISHED 130 
#define  MQTT_EVENT_SUBSCRIBED 129 
#define  MQTT_EVENT_UNSUBSCRIBED 128 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_group ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC5(esp_mqtt_event_handle_t event)
{
    esp_mqtt_client_handle_t client = event->client;
    int msg_id;
    switch (event->event_id) {
    case MQTT_EVENT_CONNECTED:
        FUNC0(TAG, "MQTT_EVENT_CONNECTED");
        msg_id = FUNC2(client, "/topic/esp-pppos", 0);
        FUNC0(TAG, "sent subscribe successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_DISCONNECTED:
        FUNC0(TAG, "MQTT_EVENT_DISCONNECTED");
        break;
    case MQTT_EVENT_SUBSCRIBED:
        FUNC0(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
        msg_id = FUNC1(client, "/topic/esp-pppos", "esp32-pppos", 0, 0, 0);
        FUNC0(TAG, "sent publish successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_UNSUBSCRIBED:
        FUNC0(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_PUBLISHED:
        FUNC0(TAG, "MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_DATA:
        FUNC0(TAG, "MQTT_EVENT_DATA");
        FUNC3("TOPIC=%.*s\r\n", event->topic_len, event->topic);
        FUNC3("DATA=%.*s\r\n", event->data_len, event->data);
        FUNC4(event_group, GOT_DATA_BIT);
        break;
    case MQTT_EVENT_ERROR:
        FUNC0(TAG, "MQTT_EVENT_ERROR");
        break;
    default:
        FUNC0(TAG, "MQTT other event id: %d", event->event_id);
        break;
    }
    return ESP_OK;
}