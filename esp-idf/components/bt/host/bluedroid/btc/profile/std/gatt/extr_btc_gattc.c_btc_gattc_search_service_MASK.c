#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBT_UUID ;
struct TYPE_4__ {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  filter_uuid; scalar_t__ filter_uuid_enable; } ;
struct TYPE_5__ {TYPE_1__ search_srvc; } ;
typedef  TYPE_2__ btc_ble_gattc_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(btc_ble_gattc_args_t *arg)
{
    tBT_UUID srvc_uuid;

    if (arg->search_srvc.filter_uuid_enable) {
        FUNC1(&srvc_uuid, &arg->search_srvc.filter_uuid);
        FUNC0(arg->search_srvc.conn_id, &srvc_uuid);
    } else {
        FUNC0(arg->search_srvc.conn_id, NULL);
    }
}