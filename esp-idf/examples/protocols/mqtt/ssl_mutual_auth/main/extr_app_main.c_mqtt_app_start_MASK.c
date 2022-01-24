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
struct TYPE_3__ {char* uri; char const* client_cert_pem; char const* client_key_pem; int /*<<< orphan*/  event_handle; } ;
typedef  TYPE_1__ esp_mqtt_client_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ client_cert_pem_start ; 
 scalar_t__ client_key_pem_start ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mqtt_event_handler ; 

__attribute__((used)) static void FUNC4(void)
{
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtts://test.mosquitto.org:8884",
        .event_handle = mqtt_event_handler,
        .client_cert_pem = (const char *)client_cert_pem_start,
        .client_key_pem = (const char *)client_key_pem_start,
    };

    FUNC0(TAG, "[APP] Free memory: %d bytes", FUNC1());
    esp_mqtt_client_handle_t client = FUNC2(&mqtt_cfg);
    FUNC3(client);
}