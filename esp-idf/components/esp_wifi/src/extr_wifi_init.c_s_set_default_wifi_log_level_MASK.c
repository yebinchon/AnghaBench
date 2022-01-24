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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_LOG_DEFAULT_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void __attribute__((constructor)) FUNC1(void)
{
    /* WiFi libraries aren't compiled to know CONFIG_LOG_DEFAULT_LEVEL,
       so set it at runtime startup. Done here not in esp_wifi_init() to allow
       the user to set the level again before esp_wifi_init() is called.
    */
    FUNC0("wifi", CONFIG_LOG_DEFAULT_LEVEL);
    FUNC0("mesh", CONFIG_LOG_DEFAULT_LEVEL);
}