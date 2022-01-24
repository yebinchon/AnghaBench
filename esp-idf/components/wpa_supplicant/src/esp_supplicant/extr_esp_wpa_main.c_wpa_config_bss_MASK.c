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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct wifi_ssid {int /*<<< orphan*/  len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 struct wifi_ssid* FUNC4 () ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(uint8_t *bssid)
{
    int ret = 0;
    struct wifi_ssid *ssid = FUNC4();
    u8 mac[6];

    FUNC0(0, mac);
    ret = FUNC5((char *)mac, (char *)bssid, FUNC2(), FUNC1(),
                (char *)FUNC3(), ssid->ssid, ssid->len);
    return ret;
}