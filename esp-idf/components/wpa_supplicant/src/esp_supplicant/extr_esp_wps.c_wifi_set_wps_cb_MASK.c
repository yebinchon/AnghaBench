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
typedef  int /*<<< orphan*/  wps_st_cb_t ;
typedef  scalar_t__ wifi_mode_t ;

/* Variables and functions */
 scalar_t__ WIFI_MODE_AP ; 
 scalar_t__ WIFI_MODE_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool
FUNC2(wps_st_cb_t cb)
{
    wifi_mode_t mode;

    FUNC0(&mode);
    if (mode == WIFI_MODE_AP || mode == WIFI_MODE_NULL) {
        return false;
    }

    if (FUNC1(cb) == 0) {
        return true;
    }

    return false;
}