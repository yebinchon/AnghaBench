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
typedef  int wpa_event ;
struct wpa_state_machine {int started; int ft_completed; int /*<<< orphan*/  PTK; void* PTK_valid; scalar_t__ mgmt_frame_prot; void* ReAuthenticationRequest; void* PtkGroupInit; void* GUpdateStationKeys; TYPE_1__* group; void* AuthenticationRequest; void* Init; void* DeauthenticationRequest; } ;
struct TYPE_2__ {int /*<<< orphan*/  GKeyDoneStations; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* TRUE ; 
#define  WPA_ASSOC 134 
#define  WPA_ASSOC_FT 133 
#define  WPA_AUTH 132 
#define  WPA_DEAUTH 131 
#define  WPA_DISASSOC 130 
#define  WPA_REAUTH 129 
#define  WPA_REAUTH_EAPOL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_state_machine*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_state_machine*) ; 
 int FUNC4 (struct wpa_state_machine*) ; 

int FUNC5(struct wpa_state_machine *sm, wpa_event event)
{
    int remove_ptk = 1;

    if (sm == NULL)
        return -1;
    
    switch (event) {
    case WPA_AUTH:
    case WPA_ASSOC:
        break;
    case WPA_DEAUTH:
    case WPA_DISASSOC:
        sm->DeauthenticationRequest = TRUE;
        break;
    case WPA_REAUTH:
    case WPA_REAUTH_EAPOL:
        if (!sm->started) {
            /*
             * When using WPS, we may end up here if the STA
             * manages to re-associate without the previous STA
             * entry getting removed. Consequently, we need to make
             * sure that the WPA state machines gets initialized
             * properly at this point.
             */
            FUNC2( MSG_DEBUG, "WPA state machine had not been "
                   "started - initialize now");
            sm->started = 1;
            sm->Init = TRUE;
            if (FUNC4(sm) == 1)
                return 1; /* should not really happen */
            sm->Init = FALSE;
            sm->AuthenticationRequest = TRUE;
            break;
        }
        if (sm->GUpdateStationKeys) {
            /*
             * Reauthentication cancels the pending group key
             * update for this STA.
             */
            sm->group->GKeyDoneStations--;
            sm->GUpdateStationKeys = FALSE;
            sm->PtkGroupInit = TRUE;
        }
        sm->ReAuthenticationRequest = TRUE;
        break;
    case WPA_ASSOC_FT:
#ifdef CONFIG_IEEE80211R
        wpa_printf( MSG_DEBUG, "FT: Retry PTK configuration "
               "after association");
        wpa_ft_install_ptk(sm);

        /* Using FT protocol, not WPA auth state machine */
        sm->ft_completed = 1;
        return 0;
#else /* CONFIG_IEEE80211R */
        break;
#endif /* CONFIG_IEEE80211R */
    }

#ifdef CONFIG_IEEE80211R
    sm->ft_completed = 0;
#endif /* CONFIG_IEEE80211R */

#ifdef CONFIG_IEEE80211W
    if (sm->mgmt_frame_prot && event == WPA_AUTH)
        remove_ptk = 0;
#endif /* CONFIG_IEEE80211W */

    if (remove_ptk) {
        sm->PTK_valid = FALSE;
        FUNC0(&sm->PTK, 0, sizeof(sm->PTK));

        if (event != WPA_REAUTH_EAPOL)
            FUNC3(sm);
    }

    return FUNC4(sm);
}