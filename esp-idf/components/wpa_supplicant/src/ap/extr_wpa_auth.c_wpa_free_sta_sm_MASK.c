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
struct wpa_state_machine {struct wpa_state_machine* wpa_ie; struct wpa_state_machine* last_rx_eapol_key; struct wpa_state_machine* assoc_resp_ftie; scalar_t__ GUpdateStationKeys; TYPE_1__* group; } ;
struct TYPE_2__ {int /*<<< orphan*/  GKeyDoneStations; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_state_machine*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_state_machine*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpa_state_machine*) ; 

__attribute__((used)) static void FUNC3(struct wpa_state_machine *sm)
{
    FUNC1(sm);
    if (sm->GUpdateStationKeys) {
        sm->group->GKeyDoneStations--;
        sm->GUpdateStationKeys = FALSE;
    }
#ifdef CONFIG_IEEE80211R
    os_free(sm->assoc_resp_ftie);
#endif /* CONFIG_IEEE80211R */
    FUNC2( MSG_DEBUG, "wpa_free_sta_sm: free eapol=%p\n", sm->last_rx_eapol_key);
    FUNC0(sm->last_rx_eapol_key);
    FUNC0(sm->wpa_ie);
    FUNC0(sm);
}