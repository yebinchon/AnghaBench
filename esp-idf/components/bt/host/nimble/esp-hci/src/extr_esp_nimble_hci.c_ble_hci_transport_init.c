
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mpe_mp; } ;


 int ACL_BLOCK_SIZE ;
 int BLE_ACL_BUF_COUNT ;
 int BLE_HCI_EVT_BUF_SIZE ;
 int BLE_HCI_EVT_HI_BUF_COUNT ;
 int BLE_HCI_EVT_LO_BUF_COUNT ;
 int BLE_HCI_TRANS_CMD_SZ ;
 int MYNEWT_VAL (int ) ;
 int SYSINIT_ASSERT_ACTIVE () ;
 int SYSINIT_PANIC_ASSERT (int) ;
 int ble_hci_acl_buf ;
 int ble_hci_acl_mbuf_pool ;
 TYPE_1__ ble_hci_acl_pool ;
 int ble_hci_cmd_buf ;
 int ble_hci_cmd_pool ;
 int ble_hci_evt_hi_buf ;
 int ble_hci_evt_hi_pool ;
 int ble_hci_evt_lo_buf ;
 int ble_hci_evt_lo_pool ;
 int os_mbuf_pool_init (int *,int *,int ,int) ;
 int os_mempool_ext_init (TYPE_1__*,int,int ,int ,char*) ;
 int os_mempool_init (int *,int,int,int ,char*) ;

__attribute__((used)) static void ble_hci_transport_init(void)
{
    int rc;


    SYSINIT_ASSERT_ACTIVE();

    rc = os_mempool_ext_init(&ble_hci_acl_pool,
                             MYNEWT_VAL(BLE_ACL_BUF_COUNT),
                             ACL_BLOCK_SIZE,
                             ble_hci_acl_buf,
                             "ble_hci_acl_pool");
    SYSINIT_PANIC_ASSERT(rc == 0);

    rc = os_mbuf_pool_init(&ble_hci_acl_mbuf_pool,
                           &ble_hci_acl_pool.mpe_mp,
                           ACL_BLOCK_SIZE,
                           MYNEWT_VAL(BLE_ACL_BUF_COUNT));
    SYSINIT_PANIC_ASSERT(rc == 0);







    rc = os_mempool_init(&ble_hci_cmd_pool,
                         1,
                         BLE_HCI_TRANS_CMD_SZ,
                         ble_hci_cmd_buf,
                         "ble_hci_cmd_pool");
    SYSINIT_PANIC_ASSERT(rc == 0);

    rc = os_mempool_init(&ble_hci_evt_hi_pool,
                         MYNEWT_VAL(BLE_HCI_EVT_HI_BUF_COUNT),
                         MYNEWT_VAL(BLE_HCI_EVT_BUF_SIZE),
                         ble_hci_evt_hi_buf,
                         "ble_hci_evt_hi_pool");
    SYSINIT_PANIC_ASSERT(rc == 0);

    rc = os_mempool_init(&ble_hci_evt_lo_pool,
                         MYNEWT_VAL(BLE_HCI_EVT_LO_BUF_COUNT),
                         MYNEWT_VAL(BLE_HCI_EVT_BUF_SIZE),
                         ble_hci_evt_lo_buf,
                         "ble_hci_evt_lo_pool");
    SYSINIT_PANIC_ASSERT(rc == 0);
}
