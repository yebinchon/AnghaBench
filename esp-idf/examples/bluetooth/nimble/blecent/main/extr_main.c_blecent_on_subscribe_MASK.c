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
typedef  int /*<<< orphan*/  uint16_t ;
struct ble_gatt_error {int /*<<< orphan*/  status; } ;
struct ble_gatt_attr {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(uint16_t conn_handle,
                     const struct ble_gatt_error *error,
                     struct ble_gatt_attr *attr,
                     void *arg)
{
    FUNC0(INFO, "Subscribe complete; status=%d conn_handle=%d "
                "attr_handle=%d\n",
                error->status, conn_handle, attr->handle);

    return 0;
}