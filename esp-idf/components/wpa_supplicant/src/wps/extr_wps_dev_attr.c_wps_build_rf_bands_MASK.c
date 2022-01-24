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
struct wps_device_data {int /*<<< orphan*/  rf_bands; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_RF_BANDS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

int FUNC3(struct wps_device_data *dev, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG,  "WPS:  * RF Bands (%x)", dev->rf_bands);
	FUNC1(msg, ATTR_RF_BANDS);
	FUNC1(msg, 1);
	FUNC2(msg, dev->rf_bands);
	return 0;
}