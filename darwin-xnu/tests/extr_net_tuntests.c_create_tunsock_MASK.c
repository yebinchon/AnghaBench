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
typedef  int /*<<< orphan*/  uuid_t ;
struct sockaddr_ctl {int sc_len; scalar_t__ sc_unit; int /*<<< orphan*/  ctl_id; int /*<<< orphan*/  sc_id; int /*<<< orphan*/  ss_sysaddr; int /*<<< orphan*/  sc_family; int /*<<< orphan*/  ctl_name; } ;
struct sockaddr {int dummy; } ;
struct ctl_info {int sc_len; scalar_t__ sc_unit; int /*<<< orphan*/  ctl_id; int /*<<< orphan*/  sc_id; int /*<<< orphan*/  ss_sysaddr; int /*<<< orphan*/  sc_family; int /*<<< orphan*/  ctl_name; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  kernctl_info ;
typedef  int /*<<< orphan*/  kernctl_addr ;
typedef  int /*<<< orphan*/  enable_netif ;
typedef  int /*<<< orphan*/  enable_flowswitch ;
typedef  int /*<<< orphan*/  enable_channel ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SYSTEM ; 
 int /*<<< orphan*/  AF_SYS_CONTROL ; 
 int /*<<< orphan*/  CTLIOCGINFO ; 
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  PF_SYSTEM ; 
 int SK_FEATURE_NETNS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SYSPROTO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int FUNC7 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  g_CONTROL_NAME ; 
 int /*<<< orphan*/  g_OPT_ENABLE_CHANNEL ; 
 int /*<<< orphan*/  g_OPT_ENABLE_FLOWSWITCH ; 
 int /*<<< orphan*/  g_OPT_ENABLE_NETIF ; 
 int /*<<< orphan*/  g_OPT_GET_CHANNEL_UUID ; 
 scalar_t__ g_is_ipsec_test ; 
 int FUNC11 () ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,struct sockaddr_ctl*) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr_ctl*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(int enable_netif, int enable_flowswitch, int enable_channel)
{
	int tunsock;
	struct ctl_info kernctl_info;
	struct sockaddr_ctl kernctl_addr;
	uuid_t uuid;
	socklen_t uuidlen;

startover:

	T_QUIET; FUNC3(tunsock = FUNC17(PF_SYSTEM, SOCK_DGRAM, SYSPROTO_CONTROL), NULL);

	FUNC14(&kernctl_info, 0, sizeof(kernctl_info));
	FUNC18(kernctl_info.ctl_name, g_CONTROL_NAME, sizeof(kernctl_info.ctl_name));
	T_QUIET; T_WITH_ERRNO; FUNC4(FUNC13(tunsock, CTLIOCGINFO, &kernctl_info), NULL);

	FUNC14(&kernctl_addr, 0, sizeof(kernctl_addr));
	kernctl_addr.sc_len = sizeof(kernctl_addr);
	kernctl_addr.sc_family = AF_SYSTEM;
	kernctl_addr.ss_sysaddr = AF_SYS_CONTROL;
	kernctl_addr.sc_id = kernctl_info.ctl_id;
	kernctl_addr.sc_unit = 0;

	//T_LOG("enable_netif = %d, enable_flowswitch = %d, enable_channel = %d",
	//enable_netif, enable_channel, enable_flowswitch);

	T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
			&enable_netif, sizeof(enable_netif)), EINVAL, NULL);
	T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
			&enable_flowswitch, sizeof(enable_flowswitch)), EINVAL, NULL);
	T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
			&enable_channel, sizeof(enable_channel)), EINVAL, NULL);
	FUNC19(uuid);
	uuidlen = sizeof(uuid_t);
	T_QUIET; FUNC2(FUNC12(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
			uuid, &uuidlen), EINVAL, NULL);
	T_QUIET; FUNC0((unsigned long )uuidlen, sizeof(uuid_t), NULL);
	T_QUIET; FUNC5(FUNC20(uuid), NULL);

	T_QUIET; T_WITH_ERRNO; FUNC4(FUNC7(tunsock, (struct sockaddr *)&kernctl_addr, sizeof(kernctl_addr)), NULL);

	T_QUIET; T_WITH_ERRNO; FUNC4(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
				&enable_netif, sizeof(enable_netif)), NULL);
	T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
			&enable_flowswitch, sizeof(enable_flowswitch)), EINVAL, NULL);
	T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
			&enable_channel, sizeof(enable_channel)), EINVAL, NULL);
	FUNC19(uuid);
	uuidlen = sizeof(uuid_t);
	T_QUIET; FUNC2(FUNC12(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
			uuid, &uuidlen), ENXIO, NULL);
	T_QUIET; FUNC0((unsigned long )uuidlen, sizeof(uuid_t), NULL);
	T_QUIET; FUNC5(FUNC20(uuid), NULL);

	int error = FUNC10(tunsock, (struct sockaddr *)&kernctl_addr, sizeof(kernctl_addr));
	if (error == -1 && errno == EBUSY) {
		/* XXX remove this retry nonsense when this is fixed:
		 * <rdar://problem/37340313> creating an interface without specifying specific interface name should not return EBUSY
		 */
		FUNC9(tunsock);
		FUNC6("connect got EBUSY, sleeping 1 second before retry");
		FUNC16(1);
		goto startover;
	}
	T_QUIET; T_WITH_ERRNO; FUNC4(error, "connect()");

	T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_NETIF,
			&enable_netif, sizeof(enable_netif)), EINVAL, NULL);

	if (FUNC11() & SK_FEATURE_NETNS) {
		if (enable_netif) {
			T_QUIET; T_WITH_ERRNO; FUNC4(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
					&enable_flowswitch, sizeof(enable_flowswitch)), NULL);
		} else {
			T_QUIET; T_WITH_ERRNO; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
					&enable_flowswitch, sizeof(enable_flowswitch)), ENOENT, NULL);
		}
	} else {
		T_QUIET; T_WITH_ERRNO; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_FLOWSWITCH,
				&enable_flowswitch, sizeof(enable_flowswitch)), ENOTSUP, NULL);
	}

	if (enable_channel) {
		if (g_is_ipsec_test && !enable_netif) {
			/* ipsec doesn't support channels without a netif */
			T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
					&enable_channel, sizeof(enable_channel)), EOPNOTSUPP, NULL);
			FUNC19(uuid);
			uuidlen = sizeof(uuid_t);
			T_QUIET; FUNC2(FUNC12(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
					uuid, &uuidlen), ENXIO, NULL);
			T_QUIET; FUNC0((unsigned long )uuidlen, sizeof(uuid_t), NULL);
			T_QUIET; FUNC5(FUNC20(uuid), NULL);
		} else {
			T_QUIET; T_WITH_ERRNO; FUNC4(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
					&enable_channel, sizeof(enable_channel)), NULL);
			FUNC19(uuid);
			uuidlen = sizeof(uuid_t);
			T_QUIET; T_WITH_ERRNO; FUNC4(FUNC12(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
					uuid, &uuidlen), NULL);
			T_QUIET; FUNC0((unsigned long )uuidlen, sizeof(uuid_t), NULL);
			T_QUIET; FUNC1(FUNC20(uuid), NULL);
		}
	} else {
		T_QUIET; FUNC2(FUNC15(tunsock, SYSPROTO_CONTROL, g_OPT_ENABLE_CHANNEL,
				&enable_channel, sizeof(enable_channel)), ENXIO, NULL);
		FUNC19(uuid);
		uuidlen = sizeof(uuid_t);
		T_QUIET; FUNC2(FUNC12(tunsock, SYSPROTO_CONTROL, g_OPT_GET_CHANNEL_UUID,
				uuid, &uuidlen), ENXIO, NULL);
		T_QUIET; FUNC0((unsigned long )uuidlen, sizeof(uuid_t), NULL);
		T_QUIET; FUNC5(FUNC20(uuid), NULL);
	}

	FUNC8(tunsock, enable_netif, enable_flowswitch, enable_channel, uuid);

	//T_LOG("Returning tunsock %d", tunsock);

	return tunsock;
}