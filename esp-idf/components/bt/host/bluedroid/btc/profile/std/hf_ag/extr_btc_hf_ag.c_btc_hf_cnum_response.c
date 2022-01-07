
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ok_flag; int str; } ;
typedef TYPE_2__ tBTA_AG_RES_DATA ;
typedef int esp_hf_subscriber_service_type_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
typedef int ag_res ;
struct TYPE_6__ {int handle; } ;
struct TYPE_8__ {TYPE_1__ btc_hf_cb; } ;


 int BTA_AG_CNUM_RES ;
 int BTA_AG_OK_DONE ;
 int BTA_AgResult (int ,int ,TYPE_2__*) ;
 int BTC_HF_INVALID_IDX ;
 int BTC_TRACE_EVENT (char*,char const*,int) ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_SLC_CONNECTED () ;
 int btc_hf_idx_by_bdaddr (int *) ;
 TYPE_4__* hf_local_param ;
 scalar_t__ is_connected (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int sprintf (int ,char*,...) ;

__attribute__((used)) static bt_status_t btc_hf_cnum_response(bt_bdaddr_t *bd_addr, const char *number, esp_hf_subscriber_service_type_t type)
{
    int idx = btc_hf_idx_by_bdaddr(bd_addr);
    CHECK_HF_SLC_CONNECTED();

    if (is_connected(bd_addr) && (idx != BTC_HF_INVALID_IDX)) {
        tBTA_AG_RES_DATA ag_res;
        memset(&ag_res, 0, sizeof (ag_res));
        BTC_TRACE_EVENT("cnum_response: number = %s, type = %d", number, type);
        if (number) {
            sprintf(ag_res.str, ",\"%s\",%d",number, type);
        } else {
            sprintf(ag_res.str, ",\"\",%d",type);
        }
        ag_res.ok_flag = BTA_AG_OK_DONE;
        BTA_AgResult(hf_local_param[idx].btc_hf_cb.handle, BTA_AG_CNUM_RES, &ag_res);
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_FAIL;
}
