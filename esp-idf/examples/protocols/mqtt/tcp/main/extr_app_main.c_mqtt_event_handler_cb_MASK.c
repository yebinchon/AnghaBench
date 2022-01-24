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
#define  MQTT_EVENT_CONNECTED 134 
#define  MQTT_EVENT_DATA 133 
#define  MQTT_EVENT_DISCONNECTED 132 
#define  MQTT_EVENT_ERROR 131 
#define  MQTT_EVENT_PUBLISHED 130 
#define  MQTT_EVENT_SUBSCRIBED 129 
#define  MQTT_EVENT_UNSUBSCRIBED 128 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC5(esp_mqtt_event_handle_t event)
{
    esp_mqtt_client_handle_t client = event->client;
    int msg_id;
    // your_context_t *context = event->context;
    switch (event->event_id) {
        case MQTT_EVENT_CONNECTED:
            FUNC0(TAG, "MQTT_EVENT_CONNECTED");
            msg_id = FUNC1(client, "/topic/qos1", "data_3", 0, 1, 0);
            FUNC0(TAG, "sent publish successful, msg_id=%d", msg_id);

            msg_id = FUNC2(client, "/topic/qos0", 0);
            FUNC0(TAG, "sent subscribe successful, msg_id=%d", msg_id);

            msg_id = FUNC2(client, "/topic/qos1", 1);
            FUNC0(TAG, "sent subscribe successful, msg_id=%d", msg_id);

            msg_id = FUNC3(client, "/topic/qos1");
            FUNC0(TAG, "sent unsubscribe successful, msg_id=%d", msg_id);
            break;
        case MQTT_EVENT_DISCONNECTED:
            FUNC0(TAG, "MQTT_EVENT_DISCONNECTED");
            break;

        case MQTT_EVENT_SUBSCRIBED:
            FUNC0(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
            msg_id = FUNC1(client, "/topic/qos0", "data", 0, 0, 0);
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
            FUNC4("TOPIC=%.*s\r\n", event->topic_len, event->topic);
            FUNC4("DATA=%.*s\r\n", event->data_len, event->data);
            break;
        case MQTT_EVENT_ERROR:
            FUNC0(TAG, "MQTT_EVENT_ERROR");
            break;
        default:
            FUNC0(TAG, "Other event id:%d", event->event_id);
            break;
    }
    return ESP_OK;
}