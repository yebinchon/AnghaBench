#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wifi_mode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  esp_netif_t ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__ ip; } ;
typedef  TYPE_2__ esp_netif_ip_info_t ;

/* Variables and functions */
 int CONNECTED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ WIFI_MODE_STA ; 
 int /*<<< orphan*/ * ap_netif ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/ * sta_netif ; 
 int /*<<< orphan*/  wifi_event_group ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC4(void)
{
    int bits = FUNC3(wifi_event_group, CONNECTED_BIT, 0, 1, 0);
    esp_netif_t * ifx = ap_netif;
    esp_netif_ip_info_t ip_info;
    wifi_mode_t mode;

    FUNC2(&mode);
    if (WIFI_MODE_STA == mode) {
        bits = FUNC3(wifi_event_group, CONNECTED_BIT, 0, 1, 0);
        if (bits & CONNECTED_BIT) {
            ifx = sta_netif;
        } else {
            FUNC0(TAG, "sta has no IP");
            return 0;
        }
    }

    FUNC1(ifx, &ip_info);
    return ip_info.ip.addr;
}