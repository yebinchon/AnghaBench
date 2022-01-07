
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ (* get_ble_resolving_list_max_size ) () ;int (* get_last_features_classic_index ) () ;TYPE_6__* (* get_features_classic ) (int) ;int (* get_acl_buffer_count_ble ) () ;int (* get_ble_white_list_size ) () ;scalar_t__ (* supports_ble ) () ;scalar_t__ (* supports_ble_privacy ) () ;int (* get_sco_buffer_count ) () ;int (* get_acl_buffer_count_classic ) () ;} ;
typedef TYPE_5__ controller_t ;
struct TYPE_12__ {int pin_code_len; int pin_code; int pin_type; } ;
struct TYPE_11__ {int * p_select_cback; int bg_conn_type; int conn_state; } ;
struct TYPE_10__ {int inq_counter; void* page_scan_type; int page_scan_period; int page_scan_window; void* inq_scan_type; int inq_scan_period; int inq_scan_window; } ;
struct TYPE_15__ {TYPE_4__ cfg; TYPE_3__ ble_ctr_cb; TYPE_2__ btm_inq_vars; TYPE_1__* sec_dev_rec; } ;
struct TYPE_14__ {int as_array; } ;
struct TYPE_9__ {int sec_state; } ;


 int BLE_CONN_IDLE ;
 int BTM_BLE_CONN_NONE ;
 int BTM_BLE_PRIVATE_ADDR_INT ;
 int BTM_DEV_STATUS_UP ;
 int BTM_SEC_MAX_DEVICE_RECORDS ;
 int BTM_SEC_STATE_IDLE ;
 int BTM_SetPinType (int ,int ,int ) ;
 int HCI_DEF_INQUIRYSCAN_INTERVAL ;
 int HCI_DEF_INQUIRYSCAN_WINDOW ;
 int HCI_DEF_PAGESCAN_INTERVAL ;
 int HCI_DEF_PAGESCAN_WINDOW ;
 void* HCI_DEF_SCAN_TYPE ;
 int btm_ble_multi_adv_init () ;
 int btm_ble_resolving_list_init (scalar_t__) ;
 int btm_ble_white_list_init (int ) ;
 TYPE_8__ btm_cb ;
 int btm_decode_ext_features_page (int,int ) ;
 int btm_pm_reset () ;
 int btm_report_device_status (int ) ;
 int btm_sco_process_num_bufs (int ) ;
 int btsnd_hcic_ble_set_rand_priv_addr_timeout (int ) ;
 TYPE_5__* controller_get_interface () ;
 int gatt_reset_bgdev_list () ;
 int l2c_link_processs_ble_num_bufs (int ) ;
 int l2c_link_processs_num_bufs (int ) ;
 int l2cu_device_reset () ;
 int stub1 () ;
 int stub10 () ;
 TYPE_6__* stub11 (int) ;
 int stub2 () ;
 scalar_t__ stub3 () ;
 scalar_t__ stub4 () ;
 scalar_t__ stub5 () ;
 scalar_t__ stub6 () ;
 scalar_t__ stub7 () ;
 int stub8 () ;
 int stub9 () ;

__attribute__((used)) static void reset_complete(void)
{
    const controller_t *controller = controller_get_interface();


    l2cu_device_reset ();


    for (int devinx = 0; devinx < BTM_SEC_MAX_DEVICE_RECORDS; devinx++) {
        btm_cb.sec_dev_rec[devinx].sec_state = BTM_SEC_STATE_IDLE;
    }


    btm_cb.btm_inq_vars.inq_counter = 1;
    btm_cb.btm_inq_vars.inq_scan_window = HCI_DEF_INQUIRYSCAN_WINDOW;
    btm_cb.btm_inq_vars.inq_scan_period = HCI_DEF_INQUIRYSCAN_INTERVAL;
    btm_cb.btm_inq_vars.inq_scan_type = HCI_DEF_SCAN_TYPE;

    btm_cb.btm_inq_vars.page_scan_window = HCI_DEF_PAGESCAN_WINDOW;
    btm_cb.btm_inq_vars.page_scan_period = HCI_DEF_PAGESCAN_INTERVAL;
    btm_cb.btm_inq_vars.page_scan_type = HCI_DEF_SCAN_TYPE;


    btm_cb.ble_ctr_cb.conn_state = BLE_CONN_IDLE;
    btm_cb.ble_ctr_cb.bg_conn_type = BTM_BLE_CONN_NONE;
    btm_cb.ble_ctr_cb.p_select_cback = ((void*)0);
    gatt_reset_bgdev_list();
    btm_ble_multi_adv_init();


    btm_pm_reset();

    l2c_link_processs_num_bufs(controller->get_acl_buffer_count_classic());

    btm_sco_process_num_bufs(controller->get_sco_buffer_count());
    if (controller->supports_ble()) {
        btm_ble_white_list_init(controller->get_ble_white_list_size());
        l2c_link_processs_ble_num_bufs(controller->get_acl_buffer_count_ble());
    }


    BTM_SetPinType (btm_cb.cfg.pin_type, btm_cb.cfg.pin_code, btm_cb.cfg.pin_code_len);

    for (int i = 0; i <= controller->get_last_features_classic_index(); i++) {
        btm_decode_ext_features_page(i, controller->get_features_classic(i)->as_array);
    }

    btm_report_device_status(BTM_DEV_STATUS_UP);
}
