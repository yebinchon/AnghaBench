#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
struct ble_gap_event {TYPE_1__ mtu; } ;
struct TYPE_4__ {int /*<<< orphan*/  gatt_mtu; } ;

/* Variables and functions */
 TYPE_2__* protoble_internal ; 

__attribute__((used)) static void FUNC0(struct ble_gap_event *event, void *arg)
{
    protoble_internal->gatt_mtu = event->mtu.value;
    return;
}