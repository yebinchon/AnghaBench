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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC1(const u8 *selected_registrar,
					   int mandatory)
{
	if (selected_registrar == NULL) {
		if (mandatory) {
			FUNC0(MSG_INFO, "WPS-STRICT: Selected Registrar "
				   "attribute missing");
			return -1;
		}
		return 0;
	}
	if (*selected_registrar > 1) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid Selected Registrar "
			   "attribute value 0x%x", *selected_registrar);
		return -1;
	}
	return 0;
}