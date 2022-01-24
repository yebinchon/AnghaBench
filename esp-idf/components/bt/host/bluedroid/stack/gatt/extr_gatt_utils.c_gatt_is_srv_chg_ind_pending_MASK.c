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
struct TYPE_5__ {scalar_t__ handle; } ;
typedef  TYPE_1__ tGATT_VALUE ;
struct TYPE_6__ {scalar_t__ indicate_handle; int /*<<< orphan*/  pending_ind_q; } ;
typedef  TYPE_2__ tGATT_TCB ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_7__ {scalar_t__ handle_of_h_r; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ gatt_cb ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 

BOOLEAN FUNC7 (tGATT_TCB *p_tcb)
{
    BOOLEAN srv_chg_ind_pending = FALSE;

    FUNC0("gatt_is_srv_chg_ind_pending is_queue_empty=%d",
                     FUNC2(p_tcb->pending_ind_q));

    if (p_tcb->indicate_handle == gatt_cb.handle_of_h_r) {
        srv_chg_ind_pending = TRUE;
    } else if (! FUNC2(p_tcb->pending_ind_q)) {
        list_t *list = FUNC1(p_tcb->pending_ind_q);
        for (const list_node_t *node = FUNC3(list);
             node != FUNC4(list);
             node = FUNC5(node)) {
            tGATT_VALUE *p_buf = (tGATT_VALUE *)FUNC6(node);
            if (p_buf->handle == gatt_cb.handle_of_h_r)
            {
                srv_chg_ind_pending = TRUE;
                break;
            }
        }
    }

    FUNC0("srv_chg_ind_pending = %d", srv_chg_ind_pending);
    return srv_chg_ind_pending;
}