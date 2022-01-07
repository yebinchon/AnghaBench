
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int) ;
 int ble_hci_cmd_pool ;
 int ble_hci_evt_hi_pool ;
 int ble_hci_evt_lo_pool ;
 int os_memblock_from (int *,int *) ;
 int os_memblock_put (int *,int *) ;

void ble_hci_trans_buf_free(uint8_t *buf)
{
    int rc;







    if (os_memblock_from(&ble_hci_evt_hi_pool, buf)) {
        rc = os_memblock_put(&ble_hci_evt_hi_pool, buf);
        assert(rc == 0);
    } else if (os_memblock_from(&ble_hci_evt_lo_pool, buf)) {
        rc = os_memblock_put(&ble_hci_evt_lo_pool, buf);
        assert(rc == 0);
    } else {
        assert(os_memblock_from(&ble_hci_cmd_pool, buf));
        rc = os_memblock_put(&ble_hci_cmd_pool, buf);
        assert(rc == 0);
    }
}
