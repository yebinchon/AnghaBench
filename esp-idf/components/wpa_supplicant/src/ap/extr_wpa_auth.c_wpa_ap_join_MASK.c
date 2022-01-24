#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct wpa_state_machine {int dummy; } ;
struct hostapd_data {TYPE_2__* wpa_auth; } ;
struct TYPE_5__ {scalar_t__ wpa; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct wpa_state_machine*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_state_machine*) ; 
 struct wpa_state_machine* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpa_state_machine*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct wpa_state_machine*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC6(void** sm, uint8_t *bssid, uint8_t *wpa_ie, uint8_t wpa_ie_len)
{
    struct hostapd_data *hapd = (struct hostapd_data*)FUNC0();
    struct wpa_state_machine   **wpa_sm;

    if (!sm || !bssid || !wpa_ie){
        return false;
    }

   
    wpa_sm = (struct wpa_state_machine  **)sm;

    if (hapd) {
        if (hapd->wpa_auth->conf.wpa) {
            if (*wpa_sm){
                FUNC2(*wpa_sm);
            }

            *wpa_sm = FUNC3(hapd->wpa_auth, bssid);
            FUNC4( MSG_DEBUG, "init wpa sm=%p\n", *wpa_sm);

            if (*wpa_sm == NULL) {
                return false;
            }

            if (FUNC5(hapd->wpa_auth, *wpa_sm, wpa_ie, wpa_ie_len)) {
                return false;
            }
        }

        FUNC1(hapd->wpa_auth, *wpa_sm);
    }

    return true;
}