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
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

tBTM_STATUS FUNC2 (BD_ADDR bd_addr, UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{
    tBT_TRANSPORT   transport = BT_TRANSPORT_BR_EDR;
#if (BLE_INCLUDED == TRUE)
    if (FUNC0(bd_addr)) {
        transport = BT_TRANSPORT_LE;
    }
#endif  ///BLE_INCLUDED == TRUE
    return FUNC1(bd_addr, transport, pin_len, p_pin, trusted_mask);
}