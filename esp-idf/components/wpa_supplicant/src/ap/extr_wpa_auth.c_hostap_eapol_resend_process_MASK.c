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
typedef  int /*<<< orphan*/  u32 ;
struct wpa_state_machine {scalar_t__ in_step_loop; int /*<<< orphan*/  TimeoutEvt; scalar_t__ pending_1_of_4_timeout; } ;

/* Variables and functions */
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 struct wpa_state_machine* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_state_machine*) ; 

int FUNC3(void *timeout_ctx)
{
    u32 index = (u32)timeout_ctx;
    struct wpa_state_machine *sm = FUNC0(index);

    FUNC1( MSG_DEBUG, "resend eapol1");

    if(sm) {
        sm->pending_1_of_4_timeout = 0;
        sm->TimeoutEvt = TRUE;
        sm->in_step_loop = 0;
        FUNC2(sm);
    } else {
    	FUNC1( MSG_INFO, "Station left, stop send EAPOL frame");
    }

    return ESP_OK;
}