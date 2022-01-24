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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(const u8 *serial_number, size_t len,
				      int mandatory)
{
	if (serial_number == NULL) {
		if (mandatory) {
			FUNC1(MSG_INFO, "WPS-STRICT: Serial Number "
				   "attribute missing");
			return -1;
		}
		return 0;
	}
	if (len > 0 && serial_number[len - 1] == 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid Serial "
				  "Number attribute value",
				  serial_number, len);
		return -1;
	}
	return 0;
}