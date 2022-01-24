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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_BLE_READ_DEFAULT_DATA_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(
    BT_HDR *response,
    uint16_t *ble_default_packet_length_ptr,
    uint16_t *ble_default_packet_txtime_ptr)
{

    uint8_t *stream = FUNC2(response, HCI_BLE_READ_DEFAULT_DATA_LENGTH, 2 /* bytes after */);
    FUNC0(*ble_default_packet_length_ptr, stream);
    FUNC0(*ble_default_packet_txtime_ptr, stream);
    FUNC1(response);
}