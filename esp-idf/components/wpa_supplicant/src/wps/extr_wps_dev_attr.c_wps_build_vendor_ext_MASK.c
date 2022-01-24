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
struct wps_device_data {int /*<<< orphan*/ ** vendor_ext; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_VENDOR_EXT ; 
 int MAX_WPS_VENDOR_EXTENSIONS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ *) ; 

int FUNC5(struct wps_device_data *dev, struct wpabuf *msg)
{
	int i;

	for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
		if (dev->vendor_ext[i] == NULL)
			continue;
		FUNC0(MSG_DEBUG, "WPS:  * Vendor Extension",
			    FUNC1(dev->vendor_ext[i]),
			    FUNC2(dev->vendor_ext[i]));
		FUNC3(msg, ATTR_VENDOR_EXT);
		FUNC3(msg, FUNC2(dev->vendor_ext[i]));
		FUNC4(msg, dev->vendor_ext[i]);
	}

	return 0;
}