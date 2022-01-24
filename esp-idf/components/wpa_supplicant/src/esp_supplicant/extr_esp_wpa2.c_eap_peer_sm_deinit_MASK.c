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
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*) ; 
 struct eap_sm* gEapSm ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*) ; 
 int /*<<< orphan*/ * s_wifi_wpa2_sync_sem ; 
 int /*<<< orphan*/ * s_wpa2_data_lock ; 
 int /*<<< orphan*/  s_wpa2_rxq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    struct eap_sm *sm = gEapSm;

    if (sm == NULL) {
        return;
    }

    FUNC3(sm);
    FUNC2(sm);
    FUNC1(sm, "EAP deinit");
    FUNC4(sm);
    FUNC6(sm->ssl_ctx);
#ifdef USE_WPA2_TASK
    wpa2_task_delete(0);
#endif

    if (FUNC0((&s_wpa2_rxq)) != NULL) {
        FUNC8();
    }

    if (s_wifi_wpa2_sync_sem) {
        FUNC7(s_wifi_wpa2_sync_sem);
    }
    s_wifi_wpa2_sync_sem = NULL;

    if (s_wpa2_data_lock) {
        FUNC7(s_wpa2_data_lock);
        s_wpa2_data_lock = NULL;
        FUNC10(MSG_DEBUG, "wpa2 eap_peer_sm_deinit: free data lock");
    }

    FUNC5(sm);
    gEapSm = NULL;
}