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
typedef  int /*<<< orphan*/  bd_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ H4_TYPE_COMMAND ; 
 scalar_t__ HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS ; 
 scalar_t__ HCI_BLE_WRITE_ADV_PARAMS ; 
 scalar_t__ HCI_H4_CMD_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 

__attribute__((used)) static uint16_t FUNC3 (uint8_t *buf, uint16_t adv_int_min, uint16_t adv_int_max,
        uint8_t adv_type, uint8_t addr_type_own,
        uint8_t addr_type_dir, bd_addr_t direct_bda,
        uint8_t channel_map, uint8_t adv_filter_policy)
{
    FUNC2 (buf, H4_TYPE_COMMAND);
    FUNC1 (buf, HCI_BLE_WRITE_ADV_PARAMS);
    FUNC2  (buf, HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS );

    FUNC1 (buf, adv_int_min);
    FUNC1 (buf, adv_int_max);
    FUNC2 (buf, adv_type);
    FUNC2 (buf, addr_type_own);
    FUNC2 (buf, addr_type_dir);
    FUNC0 (buf, direct_bda);
    FUNC2 (buf, channel_map);
    FUNC2 (buf, adv_filter_policy);
    return HCI_H4_CMD_PREAMBLE_SIZE + HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS;
}