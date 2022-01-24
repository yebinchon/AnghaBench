#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_state_machine {int TimeoutCtr; int GTimeoutCtr; int pending_1_of_4_timeout; int /*<<< orphan*/  resend_eapol; scalar_t__ index; } ;
struct TYPE_2__ {scalar_t__ tx_status; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;
typedef  int /*<<< orphan*/  ETSTimerFunc ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 int WPA_KEY_INFO_MIC ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_authenticator*,struct wpa_state_machine*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int,int,int /*<<< orphan*/ ) ; 
 int eapol_key_timeout_first ; 
 int eapol_key_timeout_first_group ; 
 int eapol_key_timeout_subseq ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct wpa_authenticator*,struct wpa_state_machine*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ resend_eapol_handle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  wpa_send_eapol_timeout ; 

__attribute__((used)) static void FUNC6(struct wpa_authenticator *wpa_auth,
               struct wpa_state_machine *sm, int key_info,
               const u8 *key_rsc, const u8 *nonce,
               const u8 *kde, size_t kde_len,
               int keyidx, int encr)
{
    int timeout_ms;
    int pairwise = key_info & WPA_KEY_INFO_KEY_TYPE;
    int ctr;

    if (sm == NULL)
        return;

    FUNC0(wpa_auth, sm, key_info, key_rsc, nonce, kde, kde_len,
             keyidx, encr, 0);

    ctr = pairwise ? sm->TimeoutCtr : sm->GTimeoutCtr;
    if (ctr == 1 && wpa_auth->conf.tx_status)
        timeout_ms = pairwise ? eapol_key_timeout_first :
            eapol_key_timeout_first_group;
    else
        timeout_ms = eapol_key_timeout_subseq;
    if (pairwise && ctr == 1 && !(key_info & WPA_KEY_INFO_MIC))
        sm->pending_1_of_4_timeout = 1;
    FUNC5( MSG_DEBUG, "WPA: Use EAPOL-Key timeout of %u ms (retry "
           "counter %d)\n", timeout_ms, ctr);
    FUNC1(timeout_ms / 1000, (timeout_ms % 1000) * 1000,
                   wpa_send_eapol_timeout, wpa_auth, sm);
    FUNC3(&sm->resend_eapol);
    FUNC4(&sm->resend_eapol, (ETSTimerFunc *)resend_eapol_handle, (void*)(sm->index));
    FUNC2(&sm->resend_eapol, 1000, 0);
}