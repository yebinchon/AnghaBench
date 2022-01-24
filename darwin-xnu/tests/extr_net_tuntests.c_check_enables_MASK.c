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
typedef  int* uuid_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  scratch ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int SK_FEATURE_NETNS ; 
 int /*<<< orphan*/  SYSPROTO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int /*<<< orphan*/  g_OPT_ENABLE_CHANNEL ; 
 int /*<<< orphan*/  g_OPT_ENABLE_FLOWSWITCH ; 
 int /*<<< orphan*/  g_OPT_ENABLE_NETIF ; 
 int /*<<< orphan*/  g_OPT_GET_CHANNEL_UUID ; 
 scalar_t__ g_is_ipsec_test ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static void
FUNC10(int tunsock, int enable_netif, int enable_flowswitch, int enable_channel, uuid_t uuid)
{
	int scratch;
	socklen_t scratchlen, uuidlen;
	uuid_t scratchuuid;
	if (!uuid) {
		uuid = scratchuuid;
	}

	//T_LOG("checking tunsock %d", tunsock);

	scratchlen = sizeof(scratch);
	T_QUIET; T_WITH_ERRNO; FUNC4(FUNC7(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
			&scratch, &scratchlen), NULL);
	T_QUIET; FUNC1((unsigned long )scratchlen, sizeof(scratch), NULL);
	T_QUIET; FUNC0(scratch, enable_netif, NULL);

	scratchlen = sizeof(scratch);
	T_QUIET; T_WITH_ERRNO; FUNC4(FUNC7(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
			&scratch, &scratchlen), NULL);
	T_QUIET; FUNC1((unsigned long )scratchlen, sizeof(scratch), NULL);
	if (FUNC6() & SK_FEATURE_NETNS) {
		if (enable_netif) {
			T_QUIET; FUNC0(scratch, enable_flowswitch, NULL);
		} else {
			T_QUIET; FUNC0(scratch, 0, NULL);
		}
	} else {
		T_QUIET; FUNC0(scratch, 0, NULL);
	}

	scratchlen = sizeof(scratch);
	T_QUIET; T_WITH_ERRNO; FUNC4(FUNC7(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
			&scratch, &scratchlen), NULL);
	T_QUIET; FUNC1((unsigned long )scratchlen, sizeof(scratch), NULL);
	if (g_is_ipsec_test && !enable_netif) {
		T_QUIET; FUNC0(scratch, 0, NULL);
	} else {
		T_QUIET; FUNC0(scratch, enable_channel, NULL);
	}

	if (scratch) {
		FUNC8(uuid);
		uuidlen = sizeof(uuid_t);
		T_QUIET; T_WITH_ERRNO; FUNC4(FUNC7(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
				uuid, &uuidlen), NULL);
		T_QUIET; FUNC1((unsigned long )uuidlen, sizeof(uuid_t), NULL);
		T_QUIET; FUNC2(FUNC9(uuid), NULL);
	} else {
		FUNC8(uuid);
		uuidlen = sizeof(uuid_t);
		T_QUIET; FUNC3(FUNC7(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
				uuid, &uuidlen), ENXIO, NULL);
		T_QUIET; FUNC1((unsigned long )uuidlen, sizeof(uuid_t), NULL);
		T_QUIET; FUNC5(FUNC9(uuid), NULL);
	}
}