#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_prov_sta_fail_reason_t ;
struct TYPE_7__ {int reason; } ;
typedef  TYPE_3__ wifi_event_sta_disconnected_t ;
typedef  int /*<<< orphan*/  reason ;
typedef  scalar_t__ esp_event_base_t ;
struct TYPE_5__ {int /*<<< orphan*/  no_auto_stop; } ;
struct TYPE_6__ {TYPE_1__ capabilities; } ;
struct TYPE_8__ {scalar_t__ prov_state; scalar_t__ wifi_state; int /*<<< orphan*/  wifi_disconnect_reason; int /*<<< orphan*/  timer; TYPE_2__ mgr_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ IP_EVENT ; 
 int IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_EVENT ; 
 int WIFI_EVENT_SCAN_DONE ; 
 int WIFI_EVENT_STA_DISCONNECTED ; 
 int WIFI_EVENT_STA_START ; 
 int /*<<< orphan*/  WIFI_PROV_CRED_FAIL ; 
 int /*<<< orphan*/  WIFI_PROV_CRED_SUCCESS ; 
 scalar_t__ WIFI_PROV_STATE_CRED_RECV ; 
 scalar_t__ WIFI_PROV_STATE_FAIL ; 
 scalar_t__ WIFI_PROV_STATE_STARTED ; 
 scalar_t__ WIFI_PROV_STATE_SUCCESS ; 
 int /*<<< orphan*/  WIFI_PROV_STA_AP_NOT_FOUND ; 
 int /*<<< orphan*/  WIFI_PROV_STA_AUTH_ERROR ; 
 scalar_t__ WIFI_PROV_STA_CONNECTED ; 
 void* WIFI_PROV_STA_CONNECTING ; 
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ; 
#define  WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT 133 
#define  WIFI_REASON_ASSOC_EXPIRE 132 
#define  WIFI_REASON_AUTH_EXPIRE 131 
#define  WIFI_REASON_AUTH_FAIL 130 
#define  WIFI_REASON_HANDSHAKE_TIMEOUT 129 
#define  WIFI_REASON_NO_AP_FOUND 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 TYPE_4__* prov_ctx ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(
    void* arg, esp_event_base_t event_base, int event_id, void* event_data)
{
    if (!prov_ctx_lock) {
        FUNC2(TAG, "Provisioning manager not initialized");
        return;
    }
    FUNC0(prov_ctx_lock);

    /* If pointer to provisioning application data is NULL
     * then provisioning manager is not running, therefore
     * return with error to allow the global handler to act */
    if (!prov_ctx) {
        FUNC4(prov_ctx_lock);
        return;
    }

    /* If scan completed then update scan result */
    if (prov_ctx->prov_state == WIFI_PROV_STATE_STARTED &&
        event_base == WIFI_EVENT &&
        event_id == WIFI_EVENT_SCAN_DONE) {
        FUNC8();
    }

    /* Only handle events when credential is received and
     * Wi-Fi STA is yet to complete trying the connection */
    if (prov_ctx->prov_state != WIFI_PROV_STATE_CRED_RECV) {
        FUNC4(prov_ctx_lock);
        return;
    }

    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        FUNC3(TAG, "STA Start");
        /* Once configuration is received through protocomm,
         * device is started as station. Once station starts,
         * wait for connection to establish with configured
         * host SSID and password */
        prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTING;
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        FUNC3(TAG, "STA Got IP");
        /* Station got IP. That means configuration is successful. */
        prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTED;
        prov_ctx->prov_state = WIFI_PROV_STATE_SUCCESS;

        /* If auto stop is enabled (default), schedule timer to
         * stop provisioning app after 30 seconds. */
        if (!prov_ctx->mgr_info.capabilities.no_auto_stop) {
            FUNC1(TAG, "Starting 30s timer for stop_prov_timer_cb()");
            FUNC5(prov_ctx->timer, 30000 * 1000U);
        }

        /* Execute user registered callback handler */
        FUNC7(WIFI_PROV_CRED_SUCCESS, NULL, 0);
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        FUNC2(TAG, "STA Disconnected");
        /* Station couldn't connect to configured host SSID */
        prov_ctx->wifi_state = WIFI_PROV_STA_DISCONNECTED;

        wifi_event_sta_disconnected_t* disconnected = (wifi_event_sta_disconnected_t*) event_data;
        FUNC2(TAG, "Disconnect reason : %d", disconnected->reason);

        /* Set code corresponding to the reason for disconnection */
        switch (disconnected->reason) {
        case WIFI_REASON_AUTH_EXPIRE:
        case WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT:
        case WIFI_REASON_AUTH_FAIL:
        case WIFI_REASON_ASSOC_EXPIRE:
        case WIFI_REASON_HANDSHAKE_TIMEOUT:
            FUNC2(TAG, "STA Auth Error");
            prov_ctx->wifi_disconnect_reason = WIFI_PROV_STA_AUTH_ERROR;
            break;
        case WIFI_REASON_NO_AP_FOUND:
            FUNC2(TAG, "STA AP Not found");
            prov_ctx->wifi_disconnect_reason = WIFI_PROV_STA_AP_NOT_FOUND;
            break;
        default:
            /* If none of the expected reasons,
             * retry connecting to host SSID */
            prov_ctx->wifi_state = WIFI_PROV_STA_CONNECTING;
            FUNC6();
        }

        /* In case of disconnection, update state of service and
         * run the event handler with disconnection reason as data */
        if (prov_ctx->wifi_state == WIFI_PROV_STA_DISCONNECTED) {
            prov_ctx->prov_state = WIFI_PROV_STATE_FAIL;
            wifi_prov_sta_fail_reason_t reason = prov_ctx->wifi_disconnect_reason;
            /* Execute user registered callback handler */
            FUNC7(WIFI_PROV_CRED_FAIL, (void *)&reason, sizeof(reason));
        }
    }

    FUNC4(prov_ctx_lock);
}