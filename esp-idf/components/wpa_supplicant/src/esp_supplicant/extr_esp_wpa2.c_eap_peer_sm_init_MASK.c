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
struct eap_sm {int current_identifier; int /*<<< orphan*/ * ssl_ctx; int /*<<< orphan*/  ownaddr; } ;

/* Variables and functions */
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  SIG_WPA2_MAX ; 
 int /*<<< orphan*/  WIFI_IF_STA ; 
 int /*<<< orphan*/  WPA2_ENT_EAP_STATE_NOT_START ; 
 int /*<<< orphan*/  WPA2_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*) ; 
 int FUNC1 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int FUNC3 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eap_sm* gEapSm ; 
 int /*<<< orphan*/  g_wpa_private_key_passwd ; 
 int /*<<< orphan*/  g_wpa_private_key_passwd_len ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  s_wifi_wpa2_sync_sem ; 
 int /*<<< orphan*/  s_wpa2_data_lock ; 
 int /*<<< orphan*/  s_wpa2_queue ; 
 int /*<<< orphan*/  s_wpa2_task_hdl ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpa2_task ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(void)
{
    int ret = 0;
    struct eap_sm *sm;

    if (gEapSm) {
        FUNC11(MSG_ERROR, "WPA2: wpa2 sm not null, deinit it");
        FUNC4();
    }

    sm = (struct eap_sm *)FUNC7(sizeof(*sm));
    if (sm == NULL) {
        return ESP_ERR_NO_MEM;
    }

    s_wpa2_data_lock = FUNC14();
    if (!s_wpa2_data_lock) {
        FUNC11(MSG_ERROR, "wpa2 eap_peer_sm_init: failed to alloc data lock");
        return ESP_ERR_NO_MEM;
    }

    FUNC10(WPA2_ENT_EAP_STATE_NOT_START);
    sm->current_identifier = 0xff;
    FUNC5(WIFI_IF_STA, sm->ownaddr);
    ret = FUNC1(sm);
    if (ret) {
        FUNC11(MSG_ERROR, "eap_peer_blob_init failed\n");
        FUNC6(sm);
        return ESP_FAIL;
    }

    ret = FUNC3(sm, g_wpa_private_key_passwd, g_wpa_private_key_passwd_len);
    if (ret) {
        FUNC11(MSG_ERROR, "eap_peer_config_init failed\n");
        FUNC0(sm);
        FUNC6(sm);
        return ESP_FAIL;
    }

    sm->ssl_ctx = FUNC8();
    if (sm->ssl_ctx == NULL) {
        FUNC11(MSG_WARNING, "SSL: Failed to initialize TLS "
                   "context.");
        FUNC0(sm);
        FUNC2(sm);
        FUNC6(sm);
        return ESP_FAIL;
    }

    FUNC9();

    gEapSm = sm;
#ifdef USE_WPA2_TASK
    s_wpa2_queue = xQueueCreate(SIG_WPA2_MAX, sizeof( void * ) );
    xTaskCreate(wpa2_task, "wpa2T", WPA2_TASK_STACK_SIZE, NULL, 2, s_wpa2_task_hdl);
    s_wifi_wpa2_sync_sem = xSemaphoreCreateCounting(1, 0);
    if (!s_wifi_wpa2_sync_sem) {
        wpa_printf(MSG_ERROR, "WPA2: failed create wifi wpa2 task sync sem");
        return ESP_FAIL;
    }

    wpa_printf(MSG_INFO, "wpa2_task prio:%d, stack:%d\n", 2, WPA2_TASK_STACK_SIZE);

#endif
    return ESP_OK;
}