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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int WPS_AUTH_TYPES ; 
 int WPS_AUTH_WPA2PSK ; 
 int WPS_AUTH_WPAPSK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(const u8 *type, int mandatory)
{
	u16 val;

	if (type == NULL) {
		if (mandatory) {
			FUNC2(MSG_INFO, "WPS-STRICT: Authentication Type "
				   "attribute missing");
			return -1;
		}
		return 0;
	}
	val = FUNC0(type);
	if ((val & ~WPS_AUTH_TYPES) || val == 0 ||
	    (FUNC1(val) > 1 &&
	     val != (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK))) {
		FUNC2(MSG_INFO, "WPS-STRICT: Invalid Authentication Type "
			   "attribute value 0x%04x", val);
		return -1;
	}
	return 0;
}