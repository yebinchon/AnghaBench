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
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ H4_TYPE_COMMAND ; 
 scalar_t__ HCIC_PARAM_SIZE_BLE_WRITE_ADV_DATA ; 
 int /*<<< orphan*/  HCI_BLE_WRITE_ADV_DATA ; 
 scalar_t__ HCI_H4_CMD_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint16_t FUNC4(uint8_t *buf, uint8_t data_len, uint8_t *p_data)
{
    FUNC2 (buf, H4_TYPE_COMMAND);
    FUNC1 (buf, HCI_BLE_WRITE_ADV_DATA);
    FUNC2  (buf, HCIC_PARAM_SIZE_BLE_WRITE_ADV_DATA + 1);

    FUNC3(buf, 0, HCIC_PARAM_SIZE_BLE_WRITE_ADV_DATA);

    if (p_data != NULL && data_len > 0) {
        if (data_len > HCIC_PARAM_SIZE_BLE_WRITE_ADV_DATA) {
            data_len = HCIC_PARAM_SIZE_BLE_WRITE_ADV_DATA;
        }

        FUNC2 (buf, data_len);

        FUNC0 (buf, p_data, data_len);
    }
    return HCI_H4_CMD_PREAMBLE_SIZE + HCIC_PARAM_SIZE_BLE_WRITE_ADV_DATA + 1;
}