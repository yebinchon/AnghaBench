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
typedef  int /*<<< orphan*/  mac ;
typedef  int /*<<< orphan*/  device_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_EFUSE_MAC_FACTORY ; 
 int /*<<< orphan*/  ESP_EFUSE_SECURE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(device_desc_t *desc)
{
    FUNC1(TAG, "read efuse fields");

    uint8_t mac[6];
    FUNC0(FUNC2(ESP_EFUSE_MAC_FACTORY, &mac, sizeof(mac) * 8));
    FUNC1(TAG, "1. read MAC address: %02x:%02x:%02x:%02x:%02x:%02x", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

    size_t secure_version = 0;
    FUNC0(FUNC3(ESP_EFUSE_SECURE_VERSION, &secure_version));
    FUNC1(TAG, "2. read secure_version: %d", secure_version);

    FUNC1(TAG, "3. read custom fields");
    FUNC4(desc);   
}