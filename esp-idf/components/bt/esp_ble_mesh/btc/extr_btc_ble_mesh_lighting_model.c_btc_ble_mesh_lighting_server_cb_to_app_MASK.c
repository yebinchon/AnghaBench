#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  (* esp_ble_mesh_lighting_server_cb_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  esp_ble_mesh_lighting_server_cb_param_t ;
typedef  int /*<<< orphan*/  esp_ble_mesh_lighting_server_cb_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_PID_LIGHTING_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(
    esp_ble_mesh_lighting_server_cb_event_t event,
    esp_ble_mesh_lighting_server_cb_param_t *param)
{
    esp_ble_mesh_lighting_server_cb_t btc_ble_mesh_cb =
        (esp_ble_mesh_lighting_server_cb_t)FUNC0(BTC_PID_LIGHTING_SERVER);
    if (btc_ble_mesh_cb) {
        btc_ble_mesh_cb(event, param);
    }
}