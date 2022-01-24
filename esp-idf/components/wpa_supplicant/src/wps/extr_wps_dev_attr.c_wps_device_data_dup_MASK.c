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
struct wps_device_data {int /*<<< orphan*/  rf_bands; int /*<<< orphan*/  os_version; int /*<<< orphan*/  pri_dev_type; void* serial_number; void* model_number; void* model_name; void* manufacturer; void* device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 

void FUNC2(struct wps_device_data *dst,
			 const struct wps_device_data *src)
{
	if (src->device_name)
		dst->device_name = FUNC1(src->device_name);
	if (src->manufacturer)
		dst->manufacturer = FUNC1(src->manufacturer);
	if (src->model_name)
		dst->model_name = FUNC1(src->model_name);
	if (src->model_number)
		dst->model_number = FUNC1(src->model_number);
	if (src->serial_number)
		dst->serial_number = FUNC1(src->serial_number);
	FUNC0(dst->pri_dev_type, src->pri_dev_type, WPS_DEV_TYPE_LEN);
	dst->os_version = src->os_version;
	dst->rf_bands = src->rf_bands;
}