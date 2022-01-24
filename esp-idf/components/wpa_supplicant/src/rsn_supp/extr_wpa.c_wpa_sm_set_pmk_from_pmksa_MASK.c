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
struct wpa_sm {int /*<<< orphan*/  pmk; int /*<<< orphan*/  pmk_len; TYPE_1__* cur_pmksa; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmk; int /*<<< orphan*/  pmk_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct wpa_sm *sm)
{
	if (sm == NULL)
		return;

	if (sm->cur_pmksa) {
		sm->pmk_len = sm->cur_pmksa->pmk_len;
		FUNC0(sm->pmk, sm->cur_pmksa->pmk, sm->pmk_len);
	} else {
		sm->pmk_len = PMK_LEN;
		FUNC1(sm->pmk, 0, PMK_LEN);
	}
}