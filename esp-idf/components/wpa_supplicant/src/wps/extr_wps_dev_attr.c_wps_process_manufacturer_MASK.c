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
struct wps_device_data {char* manufacturer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct wps_device_data *dev, const u8 *str,
				    size_t str_len)
{
	if (str == NULL) {
		FUNC4(MSG_DEBUG,  "WPS: No Manufacturer received");
		return -1;
	}

	FUNC3(MSG_DEBUG, "WPS: Manufacturer", str, str_len);

	FUNC0(dev->manufacturer);
	dev->manufacturer = (char *)FUNC1(str_len + 1);
	if (dev->manufacturer == NULL)
		return -1;
	FUNC2(dev->manufacturer, str, str_len);
	dev->manufacturer[str_len] = '\0';

	return 0;
}