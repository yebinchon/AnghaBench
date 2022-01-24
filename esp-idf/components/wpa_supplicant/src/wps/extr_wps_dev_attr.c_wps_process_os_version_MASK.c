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
struct wps_device_data {int /*<<< orphan*/  os_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC2(struct wps_device_data *dev, const u8 *ver)
{
	if (ver == NULL) {
		FUNC1(MSG_DEBUG,  "WPS: No OS Version received");
		return -1;
	}

	dev->os_version = FUNC0(ver);
	FUNC1(MSG_DEBUG,  "WPS: OS Version %08x", dev->os_version);

	return 0;
}