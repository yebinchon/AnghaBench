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
struct wps_device_data {int /*<<< orphan*/  rf_bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC1(struct wps_device_data *dev, const u8 *bands)
{
	if (bands == NULL) {
		FUNC0(MSG_DEBUG,  "WPS: No RF Bands received");
		return -1;
	}

	dev->rf_bands = *bands;
	FUNC0(MSG_DEBUG,  "WPS: Enrollee RF Bands 0x%x", dev->rf_bands);

	return 0;
}