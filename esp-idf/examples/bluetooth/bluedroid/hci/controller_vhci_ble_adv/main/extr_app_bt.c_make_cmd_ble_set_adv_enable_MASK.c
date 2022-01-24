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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ H4_TYPE_COMMAND ; 
 scalar_t__ HCIC_PARAM_SIZE_WRITE_ADV_ENABLE ; 
 int /*<<< orphan*/  HCI_BLE_WRITE_ADV_ENABLE ; 
 scalar_t__ HCI_H4_CMD_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 

__attribute__((used)) static uint16_t FUNC2 (uint8_t *buf, uint8_t adv_enable)
{
    FUNC1 (buf, H4_TYPE_COMMAND);
    FUNC0 (buf, HCI_BLE_WRITE_ADV_ENABLE);
    FUNC1  (buf, HCIC_PARAM_SIZE_WRITE_ADV_ENABLE);
    FUNC1 (buf, adv_enable);
    return HCI_H4_CMD_PREAMBLE_SIZE + HCIC_PARAM_SIZE_WRITE_ADV_ENABLE;
}