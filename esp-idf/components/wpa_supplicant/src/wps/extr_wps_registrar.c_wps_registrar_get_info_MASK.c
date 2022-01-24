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
typedef  int /*<<< orphan*/  uuid ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {char* device_name; char* manufacturer; char* model_name; char* model_number; char* serial_number; int /*<<< orphan*/  pri_dev_type; } ;
struct wps_registrar_device {TYPE_1__ dev; int /*<<< orphan*/  uuid; } ;
struct wps_registrar {int dummy; } ;
typedef  int /*<<< orphan*/  devtype ;

/* Variables and functions */
 int WPS_DEV_TYPE_BUFSIZE ; 
 int FUNC0 (char*,size_t,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct wps_registrar_device* FUNC3 (struct wps_registrar*,int /*<<< orphan*/  const*) ; 

int FUNC4(struct wps_registrar *reg, const u8 *addr,
			   char *buf, size_t buflen)
{
	struct wps_registrar_device *d;
	int len = 0, ret;
	char uuid[40];
	char devtype[WPS_DEV_TYPE_BUFSIZE];

	d = FUNC3(reg, addr);
	if (d == NULL)
		return 0;
	if (FUNC1(d->uuid, uuid, sizeof(uuid)))
		return 0;

	ret = FUNC0(buf + len, buflen - len,
			  "wpsUuid=%s\n"
			  "wpsPrimaryDeviceType=%s\n"
			  "wpsDeviceName=%s\n"
			  "wpsManufacturer=%s\n"
			  "wpsModelName=%s\n"
			  "wpsModelNumber=%s\n"
			  "wpsSerialNumber=%s\n",
			  uuid,
			  FUNC2(d->dev.pri_dev_type, devtype,
					       sizeof(devtype)),
			  d->dev.device_name ? d->dev.device_name : "",
			  d->dev.manufacturer ? d->dev.manufacturer : "",
			  d->dev.model_name ? d->dev.model_name : "",
			  d->dev.model_number ? d->dev.model_number : "",
			  d->dev.serial_number ? d->dev.serial_number : "");
	if (ret < 0 || (size_t) ret >= buflen - len)
		return len;
	len += ret;

	return len;
}