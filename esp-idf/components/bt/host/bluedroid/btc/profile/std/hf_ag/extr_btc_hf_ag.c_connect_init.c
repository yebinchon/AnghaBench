
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef int bt_status_t ;
struct TYPE_10__ {int address; } ;
typedef TYPE_3__ bt_bdaddr_t ;
struct TYPE_8__ {int address; } ;
struct TYPE_9__ {TYPE_1__ connected_bda; int handle; int connection_state; } ;
struct TYPE_11__ {TYPE_2__ btc_hf_cb; } ;


 int BTA_AgOpen (int ,int ,int ,int ) ;
 int BTC_HF_SECURITY ;
 int BTC_HF_SERVICES ;
 int BT_STATUS_BUSY ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_INIT () ;
 int ESP_HF_CONNECTION_STATE_CONNECTING ;
 int bdcpy (int ,int ) ;
 int btc_hf_idx_by_bdaddr (TYPE_3__*) ;
 int btc_max_hf_clients ;
 TYPE_5__* hf_local_param ;
 int is_connected (TYPE_3__*) ;

__attribute__((used)) static bt_status_t connect_init(bt_bdaddr_t *bd_addr, uint16_t uuid)
{
    int idx = btc_hf_idx_by_bdaddr(bd_addr);
    CHECK_HF_INIT();
    if (idx == btc_max_hf_clients) {
        return BT_STATUS_BUSY;
    }

    if (!is_connected(bd_addr)) {
        hf_local_param[idx].btc_hf_cb.connection_state = ESP_HF_CONNECTION_STATE_CONNECTING;
        bdcpy(hf_local_param[idx].btc_hf_cb.connected_bda.address, bd_addr->address);
        BTA_AgOpen(hf_local_param[idx].btc_hf_cb.handle, hf_local_param[idx].btc_hf_cb.connected_bda.address, BTC_HF_SECURITY, BTC_HF_SERVICES);
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_BUSY;
}
