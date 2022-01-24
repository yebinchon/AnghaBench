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
typedef  int /*<<< orphan*/  u8 ;
struct wps_registrar {struct wps_pbc_session* pbc_sessions; } ;
struct os_time {scalar_t__ sec; } ;
struct wps_pbc_session {struct wps_pbc_session* next; struct os_time timestamp; int /*<<< orphan*/  uuid_e; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ WPS_PBC_WALK_TIME ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct os_time*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_pbc_session*) ; 

__attribute__((used)) static void FUNC5(struct wps_registrar *reg,
					  const u8 *addr, const u8 *uuid_e)
{
	struct wps_pbc_session *pbc, *prev = NULL;
	struct os_time now;

	FUNC0(&now);

	pbc = reg->pbc_sessions;
	while (pbc) {
		if (FUNC1(pbc->addr, addr, ETH_ALEN) == 0 &&
		    FUNC1(pbc->uuid_e, uuid_e, WPS_UUID_LEN) == 0) {
			if (prev)
				prev->next = pbc->next;
			else
				reg->pbc_sessions = pbc->next;
			break;
		}
		prev = pbc;
		pbc = pbc->next;
	}

	if (!pbc) {
		pbc = (struct wps_pbc_session *)FUNC3(sizeof(*pbc));
		if (pbc == NULL)
			return;
		FUNC2(pbc->addr, addr, ETH_ALEN);
		if (uuid_e)
			FUNC2(pbc->uuid_e, uuid_e, WPS_UUID_LEN);
	}

	pbc->next = reg->pbc_sessions;
	reg->pbc_sessions = pbc;
	pbc->timestamp = now;

	/* remove entries that have timed out */
	prev = pbc;
	pbc = pbc->next;

	while (pbc) {
		if (now.sec > pbc->timestamp.sec + WPS_PBC_WALK_TIME) {
			prev->next = NULL;
			FUNC4(pbc);
			break;
		}
		prev = pbc;
		pbc = pbc->next;
	}
}