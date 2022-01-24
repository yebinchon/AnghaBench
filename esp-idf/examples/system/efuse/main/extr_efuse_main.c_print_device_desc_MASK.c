#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int device_role; int /*<<< orphan*/  custom_secure_version; int /*<<< orphan*/  setting_2; int /*<<< orphan*/  setting_1; int /*<<< orphan*/  module_version; } ;
typedef  TYPE_1__ device_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 

__attribute__((used)) static void FUNC1(device_desc_t *desc)
{
    FUNC0(TAG, "module_version = %d", desc->module_version);
    if (desc->device_role == 0) {
        FUNC0(TAG, "device_role = None");
    } else if (desc->device_role == 1) {
        FUNC0(TAG, "device_role = Master");
    } else if (desc->device_role == 2) {
        FUNC0(TAG, "device_role = Slave");
    } else {
        FUNC0(TAG, "device_role = Not supported");
    }
    FUNC0(TAG, "setting_1 = %d", desc->setting_1);
    FUNC0(TAG, "setting_2 = %d", desc->setting_2);
    FUNC0(TAG, "custom_secure_version = %d", desc->custom_secure_version);
}