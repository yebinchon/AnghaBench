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
struct wps_parse_attr {int /*<<< orphan*/  dev_name_len; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  primary_dev_type; int /*<<< orphan*/  serial_number_len; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_number_len; int /*<<< orphan*/  model_number; int /*<<< orphan*/  model_name_len; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer_len; int /*<<< orphan*/  manufacturer; } ;
struct wps_device_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wps_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wps_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wps_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wps_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wps_device_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wps_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct wps_device_data *dev,
			     struct wps_parse_attr *attr)
{
	if (FUNC1(dev, attr->manufacturer,
				     attr->manufacturer_len) ||
	    FUNC2(dev, attr->model_name,
				   attr->model_name_len) ||
	    FUNC3(dev, attr->model_number,
				     attr->model_number_len) ||
	    FUNC5(dev, attr->serial_number,
				      attr->serial_number_len) ||
	    FUNC4(dev, attr->primary_dev_type) ||
	    FUNC0(dev, attr->dev_name, attr->dev_name_len))
		return -1;
	return 0;
}