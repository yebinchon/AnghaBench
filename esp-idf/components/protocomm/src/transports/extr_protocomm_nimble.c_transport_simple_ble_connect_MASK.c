#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  conn_handle; } ;
struct ble_gap_event {TYPE_1__ connect; } ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_8__ {TYPE_2__* pc_ble; } ;
struct TYPE_7__ {scalar_t__ (* new_transport_session ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  sec_inst; TYPE_3__* sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_4__* protoble_internal ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ble_gap_event *event, void *arg)
{
    esp_err_t ret;
    FUNC0(TAG, "Inside BLE connect w/ conn_id - %d", event->connect.conn_handle);
    if (protoble_internal->pc_ble->sec &&
            protoble_internal->pc_ble->sec->new_transport_session) {
        ret =
            protoble_internal->pc_ble->sec->new_transport_session(protoble_internal->pc_ble->sec_inst, event->connect.conn_handle);
        if (ret != ESP_OK) {
            FUNC1(TAG, "error creating the session");
        }
    }
}