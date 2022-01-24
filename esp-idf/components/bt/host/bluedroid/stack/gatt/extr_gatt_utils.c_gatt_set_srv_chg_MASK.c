#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  srv_chg; } ;
typedef  TYPE_2__ tGATTS_SRV_CHG_REQ ;
struct TYPE_9__ {scalar_t__ srv_changed; } ;
typedef  TYPE_3__ tGATTS_SRV_CHG ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* p_srv_chg_callback ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {TYPE_1__ cb_info; int /*<<< orphan*/  srv_chg_clt_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  GATTS_SRV_CHG_CMD_UPDATE_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__ gatt_cb ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
    FUNC0 ("gatt_set_srv_chg");

    if (FUNC2(gatt_cb.srv_chg_clt_q)) {
        return;
	}

    list_t *list = FUNC1(gatt_cb.srv_chg_clt_q);
    for (const list_node_t *node = FUNC3(list); node != FUNC4(list);
         node = FUNC5(node)) {
        FUNC0 ("found a srv_chg clt");

        tGATTS_SRV_CHG *p_buf = (tGATTS_SRV_CHG *)FUNC6(node);
        if (!p_buf->srv_changed) {
            FUNC0("set srv_changed to TRUE");
            p_buf->srv_changed = TRUE;
            tGATTS_SRV_CHG_REQ req;
            FUNC7(&req.srv_chg, p_buf, sizeof(tGATTS_SRV_CHG));
            if (gatt_cb.cb_info.p_srv_chg_callback) {
                (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_UPDATE_CLIENT,&req, NULL);
			}
        }
    }
}