
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;





 int assert (int ) ;
 int ble_hci_cmd_pool ;
 int ble_hci_evt_hi_pool ;
 int ble_hci_evt_lo_pool ;
 int * os_memblock_get (int *) ;

uint8_t *ble_hci_trans_buf_alloc(int type)
{
    uint8_t *buf;

    switch (type) {
    case 130:
        buf = os_memblock_get(&ble_hci_cmd_pool);
        break;

    case 129:
        buf = os_memblock_get(&ble_hci_evt_hi_pool);
        if (buf == ((void*)0)) {



            buf = ble_hci_trans_buf_alloc(128);
        }
        break;

    case 128:
        buf = os_memblock_get(&ble_hci_evt_lo_pool);
        break;

    default:
        assert(0);
        buf = ((void*)0);
    }

    return buf;
}
