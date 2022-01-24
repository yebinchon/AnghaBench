#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bda; } ;
struct TYPE_8__ {TYPE_1__ srv_chg; } ;
typedef  TYPE_3__ tGATTS_SRV_CHG_REQ ;
typedef  int /*<<< orphan*/  tGATTS_SRV_CHG ;
struct TYPE_7__ {int /*<<< orphan*/  (* p_srv_chg_callback ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  srv_chg_clt_q; TYPE_2__ cb_info; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  GATTS_SRV_CHG_CMD_REMOVE_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__ gatt_cb ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC6(BD_ADDR bd_addr)
{
    tGATTS_SRV_CHG     *p_buf;
    tGATTS_SRV_CHG_REQ  req;

    FUNC0 ("gatt_delete_dev_from_srv_chg_clt_list");
    if ((p_buf = FUNC2(bd_addr)) != NULL) {
        if (gatt_cb.cb_info.p_srv_chg_callback) {
            /* delete from NV */
            FUNC3(req.srv_chg.bda, bd_addr, BD_ADDR_LEN);
            (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_REMOVE_CLIENT, &req, NULL);
        }
        FUNC4(FUNC1(gatt_cb.srv_chg_clt_q,
                                                      p_buf));
    }

}