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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ok_flag; int /*<<< orphan*/  str; } ;
typedef  TYPE_2__ tBTA_AG_RES_DATA ;
typedef  int esp_hf_subscriber_service_type_t ;
typedef  int /*<<< orphan*/  bt_status_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;
typedef  int /*<<< orphan*/  ag_res ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {TYPE_1__ btc_hf_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_CNUM_RES ; 
 int /*<<< orphan*/  BTA_AG_OK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int BTC_HF_INVALID_IDX ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  BT_STATUS_FAIL ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* hf_local_param ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bt_status_t FUNC7(bt_bdaddr_t *bd_addr, const char *number, esp_hf_subscriber_service_type_t type)
{
    int idx = FUNC3(bd_addr);
    FUNC2();

    if (FUNC4(bd_addr) && (idx != BTC_HF_INVALID_IDX)) {
        tBTA_AG_RES_DATA    ag_res;
        FUNC5(&ag_res, 0, sizeof (ag_res));
        FUNC1("cnum_response: number = %s, type = %d", number, type);
        if (number) {
            FUNC6(ag_res.str, ",\"%s\",%d",number, type);
        } else {
            FUNC6(ag_res.str, ",\"\",%d",type);
        }
        ag_res.ok_flag = BTA_AG_OK_DONE;
        FUNC0(hf_local_param[idx].btc_hf_cb.handle, BTA_AG_CNUM_RES, &ag_res);
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_FAIL;
}