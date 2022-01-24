#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_new_srv_start; } ;
typedef  TYPE_1__ tGATTS_PENDING_NEW_SRV_START ;
struct TYPE_6__ {scalar_t__ svc_inst; int /*<<< orphan*/  svc_uuid; int /*<<< orphan*/  app_uuid128; } ;
typedef  TYPE_2__ tGATTS_HNDL_RANGE ;
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_node_t ;
typedef  scalar_t__ UINT16 ;
struct TYPE_7__ {int /*<<< orphan*/  pending_new_srv_start_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ gatt_cb ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 

tGATTS_PENDING_NEW_SRV_START *FUNC8(tBT_UUID *p_app_uuid128, tBT_UUID *p_svc_uuid, UINT16 svc_inst)
{
    tGATTS_PENDING_NEW_SRV_START *p_buf = NULL;

    if (FUNC2(gatt_cb.pending_new_srv_start_q)) {
        return NULL;
	}

    list_t *list = FUNC1(gatt_cb.pending_new_srv_start_q);
    for (const list_node_t *node = FUNC4(list); node != FUNC5(list);
         node = FUNC6(node)) {
        p_buf = (tGATTS_PENDING_NEW_SRV_START *)FUNC7(node);
        tGATTS_HNDL_RANGE *p = p_buf->p_new_srv_start;
        if (FUNC3(*p_app_uuid128, p->app_uuid128)
            && FUNC3 (*p_svc_uuid, p->svc_uuid)
            && (svc_inst == p->svc_inst)) {
            FUNC0("gatt_sr_is_new_srv_chg: Yes");
            break;
        }
    }

    return p_buf;
}