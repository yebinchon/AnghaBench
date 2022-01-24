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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_cmd_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    char *adv_name = "ESP-BLE-HELLO";
    uint8_t name_len = (uint8_t)FUNC2(adv_name);
    uint8_t adv_data[31] = {0x02, 0x01, 0x06, 0x0, 0x09};
    uint8_t adv_data_len;

    adv_data[3] = name_len + 1;
    for (int i = 0; i < name_len; i++) {
        adv_data[5 + i] = (uint8_t)adv_name[i];
    }
    adv_data_len = 5 + name_len;

    uint16_t sz = FUNC1(hci_cmd_buf, adv_data_len, (uint8_t *)adv_data);
    FUNC0(hci_cmd_buf, sz);
}