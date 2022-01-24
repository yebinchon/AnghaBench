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
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_VENDOR_BLE_SET_ADV_FLOW_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int const,int**) ; 

__attribute__((used)) static BT_HDR *FUNC3(uint8_t enable, uint16_t num, uint16_t lost_threshold)
{
    uint8_t *stream;
    const uint8_t parameter_size = 1 + 2 + 2;
    BT_HDR *packet = FUNC2(HCI_VENDOR_BLE_SET_ADV_FLOW_CONTROL, parameter_size, &stream);

    FUNC1(stream, enable);
    FUNC0(stream, num);
    FUNC0(stream, lost_threshold);
    return packet;
}