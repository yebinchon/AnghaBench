#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int reason; } ;
typedef  TYPE_1__ wifi_event_sta_disconnected_t ;
typedef  scalar_t__ esp_event_base_t ;
struct TYPE_4__ {void* wifi_state; int /*<<< orphan*/  wifi_disconnect_reason; scalar_t__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ IP_EVENT ; 
 int IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_EVENT ; 
 int WIFI_EVENT_STA_DISCONNECTED ; 
 int WIFI_EVENT_STA_START ; 
 int /*<<< orphan*/  WIFI_PROV_STA_AP_NOT_FOUND ; 
 int /*<<< orphan*/  WIFI_PROV_STA_AUTH_ERROR ; 
 void* WIFI_PROV_STA_CONNECTED ; 
 void* WIFI_PROV_STA_CONNECTING ; 
 void* WIFI_PROV_STA_DISCONNECTED ; 
#define  WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT 134 
#define  WIFI_REASON_ASSOC_FAIL 133 
#define  WIFI_REASON_AUTH_EXPIRE 132 
#define  WIFI_REASON_AUTH_FAIL 131 
#define  WIFI_REASON_BEACON_TIMEOUT 130 
#define  WIFI_REASON_HANDSHAKE_TIMEOUT 129 
#define  WIFI_REASON_NO_AP_FOUND 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* g_prov ; 

__attribute__((used)) static void FUNC4(void* handler_arg, esp_event_base_t event_base,
                                   int event_id, void* event_data)
{
    /* If pointer to provisioning application data is NULL
     * then provisioning is not running */
    if (!g_prov) {
        return;
    }

    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        FUNC1(TAG, "STA Start");
        /* Once configuration is received through protocomm,
         * device is started as station. Once station starts,
         * wait for connection to establish with configured
         * host SSID and password */
        g_prov->wifi_state = WIFI_PROV_STA_CONNECTING;
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        FUNC1(TAG, "STA Got IP");
        /* Station got IP. That means configuration is successful.
         * Schedule timer to stop provisioning app after 30 seconds. */
        g_prov->wifi_state = WIFI_PROV_STA_CONNECTED;
        if (g_prov && g_prov->timer) {
            /* Note that, after restarting the WiFi in Station + AP mode, the
             * user gets disconnected from the AP for a while. But at the same
             * time, the user app requests for status update from the device
             * to verify that the provisioning was successful. Therefore, the
             * turning off of the AP must be delayed long enough for the user
             * to reconnect and get STA connection status from the device.
             * Otherwise, the AP will be turned off before the user can
             * reconnect and thus the user app will see connection timed out,
             * signaling a failure in provisioning. */
            FUNC2(g_prov->timer, 30000*1000U);
        }
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        FUNC0(TAG, "STA Disconnected");
        /* Station couldn't connect to configured host SSID */
        g_prov->wifi_state = WIFI_PROV_STA_DISCONNECTED;

        wifi_event_sta_disconnected_t* disconnected = (wifi_event_sta_disconnected_t*) event_data;
        FUNC0(TAG, "Disconnect reason : %d", disconnected->reason);

        /* Set code corresponding to the reason for disconnection */
        switch (disconnected->reason) {
        case WIFI_REASON_AUTH_EXPIRE:
        case WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT:
        case WIFI_REASON_BEACON_TIMEOUT:
        case WIFI_REASON_AUTH_FAIL:
        case WIFI_REASON_ASSOC_FAIL:
        case WIFI_REASON_HANDSHAKE_TIMEOUT:
            FUNC1(TAG, "STA Auth Error");
            g_prov->wifi_disconnect_reason = WIFI_PROV_STA_AUTH_ERROR;
            break;
        case WIFI_REASON_NO_AP_FOUND:
            FUNC1(TAG, "STA AP Not found");
            g_prov->wifi_disconnect_reason = WIFI_PROV_STA_AP_NOT_FOUND;
            break;
        default:
            /* If none of the expected reasons,
             * retry connecting to host SSID */
            g_prov->wifi_state = WIFI_PROV_STA_CONNECTING;
            FUNC3();
        }
    }
}