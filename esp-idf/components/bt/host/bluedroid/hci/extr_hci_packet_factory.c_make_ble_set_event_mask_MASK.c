#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  as_array; } ;
typedef  TYPE_1__ bt_event_mask_t ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_SET_EVENT_MASK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int**) ; 

__attribute__((used)) static BT_HDR *FUNC2(const bt_event_mask_t *event_mask)
{
    uint8_t *stream;
    uint8_t parameter_size = sizeof(bt_event_mask_t);
    BT_HDR *packet = FUNC1(HCI_BLE_SET_EVENT_MASK, parameter_size, &stream);

    FUNC0(stream, event_mask->as_array);
    return packet;
}