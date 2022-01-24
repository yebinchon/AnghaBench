#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_clients; int /*<<< orphan*/  srv_chg; } ;
typedef  TYPE_2__ tGATTS_SRV_CHG_RSP ;
struct TYPE_11__ {int client_read_index; } ;
typedef  TYPE_3__ tGATTS_SRV_CHG_REQ ;
typedef  int /*<<< orphan*/  tGATTS_SRV_CHG ;
typedef  int UINT8 ;
struct TYPE_9__ {scalar_t__ (* p_srv_chg_callback ) (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ;} ;
struct TYPE_12__ {TYPE_1__ cb_info; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GATTS_SRV_CHG_CMD_READ_CLENT ; 
 int /*<<< orphan*/  GATTS_SRV_CHG_CMD_READ_NUM_CLENTS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_8__ gatt_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ; 

void FUNC6 (void)
{
    tGATTS_SRV_CHG_REQ req;
    tGATTS_SRV_CHG_RSP rsp;
    BOOLEAN status;
    UINT8 num_clients, i;
    tGATTS_SRV_CHG  srv_chg_clt;

    FUNC0("gatt_init_srv_chg");
    if (gatt_cb.cb_info.p_srv_chg_callback) {
        status = (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_READ_NUM_CLENTS, NULL, &rsp);

        if (status && rsp.num_clients) {
            FUNC0("gatt_init_srv_chg num_srv_chg_clt_clients=%d", rsp.num_clients);
            num_clients = rsp.num_clients;
            i = 1; /* use one based index */
            while ((i <= num_clients) && status) {
                req.client_read_index = i;
                if ((status = (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_READ_CLENT, &req, &rsp)) == TRUE) {
                    FUNC3(&srv_chg_clt, &rsp.srv_chg , sizeof(tGATTS_SRV_CHG));
                    if (FUNC2(&srv_chg_clt) == NULL) {
                        FUNC1("Unable to add a service change client");
                        status = FALSE;
                    }
                }
                i++;
            }
        }
    } else {
        FUNC0("gatt_init_srv_chg callback not registered yet");
    }
}