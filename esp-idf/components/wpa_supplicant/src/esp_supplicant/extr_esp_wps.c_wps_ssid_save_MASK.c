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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ ssid_len; scalar_t__* ssid; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 TYPE_1__* gWpsSm ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

int
FUNC5(u8 *ssid, u8 ssid_len)
{
    u8 *tmpssid;

    if (!ssid || !gWpsSm) {
        return ESP_FAIL;
    }

    FUNC1(gWpsSm->ssid, 0x00, sizeof(gWpsSm->ssid));
    FUNC0(gWpsSm->ssid, ssid, ssid_len);
    gWpsSm->ssid_len = ssid_len;

    tmpssid = (u8 *)FUNC3(ssid_len + 1);
    if (tmpssid) {
        FUNC0(tmpssid, ssid, ssid_len);
        FUNC4(MSG_DEBUG, "WPS: ssid[%s]", tmpssid);
        FUNC2(tmpssid);
    }
    return ESP_OK;
}