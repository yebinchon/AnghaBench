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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_IF_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,int,int,int) ; 

__attribute__((used)) static void FUNC2(char *service_name, size_t max)
{
    uint8_t eth_mac[6];
    const char *ssid_prefix = "PROV_";
    FUNC0(WIFI_IF_STA, eth_mac);
    FUNC1(service_name, max, "%s%02X%02X%02X",
             ssid_prefix, eth_mac[3], eth_mac[4], eth_mac[5]);
}