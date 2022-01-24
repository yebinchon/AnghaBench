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
typedef  int u16 ;
struct wps_data {int auth_type; TYPE_1__* wps; } ;
struct TYPE_2__ {int auth_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(struct wps_data *wps, const u8 *auth)
{
	u16 auth_types;

	if (auth == NULL) {
		FUNC1(MSG_DEBUG,  "WPS: No Authentication Type flags "
			   "received");
		return -1;
	}

	auth_types = FUNC0(auth);

	FUNC1(MSG_DEBUG,  "WPS: Enrollee Authentication Type flags 0x%x",
		   auth_types);
	wps->auth_type = wps->wps->auth_types & auth_types;
	if (wps->auth_type == 0) {
		FUNC1(MSG_DEBUG,  "WPS: No match in supported "
			   "authentication types (own 0x%x Enrollee 0x%x)",
			   wps->wps->auth_types, auth_types);
#ifdef WPS_WORKAROUNDS
		/*
		 * Some deployed implementations seem to advertise incorrect
		 * information in this attribute. For example, Linksys WRT350N
		 * seems to have a byteorder bug that breaks this negotiation.
		 * In order to interoperate with existing implementations,
		 * assume that the Enrollee supports everything we do.
		 */
		wpa_printf(MSG_DEBUG,  "WPS: Workaround - assume Enrollee "
			   "does not advertise supported authentication types "
			   "correctly");
		wps->auth_type = wps->wps->auth_types;
#else /* WPS_WORKAROUNDS */
		return -1;
#endif /* WPS_WORKAROUNDS */
	}

	return 0;
}