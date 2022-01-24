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
struct wps_device_data {int /*<<< orphan*/ * serial_number; int /*<<< orphan*/ * device_name; int /*<<< orphan*/ * model_number; int /*<<< orphan*/ * model_name; int /*<<< orphan*/ * manufacturer; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * s_factory_info ; 

int FUNC1(struct wps_device_data *dev)
{
    int ret = 0;

    if (!dev) {
        return ESP_FAIL;
    }

    if (dev->manufacturer) {
        FUNC0(dev->manufacturer);
    }
    if (dev->model_name) {
        FUNC0(dev->model_name);
    }
    if (dev->model_number) {
        FUNC0(dev->model_number);
    }
    if (dev->device_name) {
        FUNC0(dev->device_name);
    }
    if (dev->serial_number) {
        FUNC0(dev->serial_number);
    }

    if (s_factory_info) {
        FUNC0(s_factory_info);
        s_factory_info = NULL;
    }

    return ret;
}