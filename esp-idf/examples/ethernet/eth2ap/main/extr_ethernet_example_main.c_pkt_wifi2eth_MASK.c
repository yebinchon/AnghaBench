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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  s_eth_handle ; 
 scalar_t__ s_ethernet_is_connected ; 

__attribute__((used)) static esp_err_t FUNC3(void *buffer, uint16_t len, void *eb)
{
    if (s_ethernet_is_connected) {
        if (FUNC1(s_eth_handle, buffer, len) != ESP_OK) {
            FUNC0(TAG, "Ethernet send packet failed");
        }
    }
    FUNC2(eb);
    return ESP_OK;
}