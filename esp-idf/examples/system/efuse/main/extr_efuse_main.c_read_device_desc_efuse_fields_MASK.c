#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  custom_secure_version; int /*<<< orphan*/  setting_2; int /*<<< orphan*/  setting_1; int /*<<< orphan*/  device_role; int /*<<< orphan*/  module_version; } ;
typedef  TYPE_1__ device_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_EFUSE_CUSTOM_SECURE_VERSION ; 
 int /*<<< orphan*/  ESP_EFUSE_DEVICE_ROLE ; 
 int /*<<< orphan*/  ESP_EFUSE_MODULE_VERSION ; 
 int /*<<< orphan*/  ESP_EFUSE_SETTING_1 ; 
 int /*<<< orphan*/  ESP_EFUSE_SETTING_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(device_desc_t *desc)
{
    FUNC0(FUNC1(ESP_EFUSE_MODULE_VERSION, &desc->module_version, 8));
    FUNC0(FUNC1(ESP_EFUSE_DEVICE_ROLE, &desc->device_role, 3));
    FUNC0(FUNC1(ESP_EFUSE_SETTING_1, &desc->setting_1, 6));
    FUNC0(FUNC1(ESP_EFUSE_SETTING_2, &desc->setting_2, 5));
    FUNC0(FUNC2(ESP_EFUSE_CUSTOM_SECURE_VERSION, &desc->custom_secure_version));
    FUNC3(desc);
}