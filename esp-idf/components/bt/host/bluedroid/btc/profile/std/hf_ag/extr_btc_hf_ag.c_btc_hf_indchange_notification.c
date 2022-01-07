
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_hf_network_state_t ;
typedef int esp_hf_call_status_t ;
typedef int esp_hf_call_setup_status_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int BTA_AG_IND_CALL ;
 int BTA_AG_IND_CALLSETUP ;
 int BTA_AG_IND_SERVICE ;
 int BTA_AG_IND_SIGNAL ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_INIT () ;
 int btc_hf_idx_by_bdaddr (int *) ;
 scalar_t__ is_connected (int *) ;
 int send_indicator_update (int ,int) ;

__attribute__((used)) static bt_status_t btc_hf_indchange_notification(bt_bdaddr_t *bd_addr,
                                                esp_hf_call_status_t call_state,
                                                esp_hf_call_setup_status_t call_setup_state,
                                                esp_hf_network_state_t ntk_state, int signal)
{
    int idx = btc_hf_idx_by_bdaddr(bd_addr);
    CHECK_HF_INIT();
    if (is_connected(bd_addr)) {


        send_indicator_update(BTA_AG_IND_CALL, call_state);
        send_indicator_update(BTA_AG_IND_CALLSETUP, call_setup_state);
        send_indicator_update(BTA_AG_IND_SERVICE, ntk_state);
        send_indicator_update(BTA_AG_IND_SIGNAL, signal);
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_SUCCESS;
}
