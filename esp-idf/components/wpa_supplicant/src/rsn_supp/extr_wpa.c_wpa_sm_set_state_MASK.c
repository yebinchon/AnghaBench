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
struct wpa_sm {int wpa_state; int /*<<< orphan*/  cm_timer; } ;
typedef  enum wpa_states { ____Placeholder_wpa_states } wpa_states ;

/* Variables and functions */
 scalar_t__ WPA_MIC_FAILURE ; 
 scalar_t__ FUNC0 (struct wpa_sm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wpa_sm gWpaSm ; 

void FUNC2(enum wpa_states state)
{
       struct wpa_sm *sm = &gWpaSm;
    if(WPA_MIC_FAILURE==FUNC0(sm))
        FUNC1(&(sm->cm_timer));
    sm->wpa_state= state;
}