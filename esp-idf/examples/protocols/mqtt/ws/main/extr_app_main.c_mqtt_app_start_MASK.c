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
typedef  int /*<<< orphan*/  esp_mqtt_client_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ esp_mqtt_client_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BROKER_URI ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mqtt_event_handler ; 

__attribute__((used)) static void FUNC3(void)
{
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = CONFIG_BROKER_URI,
    };

    esp_mqtt_client_handle_t client = FUNC0(&mqtt_cfg);
    FUNC1(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);
    FUNC2(client);
}