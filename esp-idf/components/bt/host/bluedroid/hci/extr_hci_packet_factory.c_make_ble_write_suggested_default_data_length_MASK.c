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
 int /*<<< orphan*/  HCI_BLE_WRITE_DEFAULT_DATA_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int**) ; 

__attribute__((used)) static BT_HDR *FUNC2(uint16_t SuggestedMaxTxOctets, uint16_t SuggestedMaxTxTime)
{
    uint8_t *stream;
    uint8_t parameter_size = sizeof(uint16_t) + sizeof(uint16_t);
    BT_HDR *packet = FUNC1(HCI_BLE_WRITE_DEFAULT_DATA_LENGTH, parameter_size, &stream);

    FUNC0(stream, SuggestedMaxTxOctets);
    FUNC0(stream, SuggestedMaxTxTime);
    return packet;
}