
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {char* irk; char* static_addr; int addr_type; } ;
typedef TYPE_3__ tBTM_LE_PID_KEYS ;
typedef int tBTM_LE_PENC_KEYS ;
typedef int tBTM_LE_PCSRK_KEYS ;
typedef int tBTM_LE_KEY_VALUE ;
struct TYPE_9__ {int static_addr; int addr_type; int irk; } ;
struct TYPE_10__ {TYPE_1__ pid_key; int key_mask; int pcsrk_key; int penc_key; } ;
struct TYPE_12__ {TYPE_2__ bond_key; int * bd_addr; } ;
typedef TYPE_4__ esp_ble_bond_dev_t ;
typedef int btc_config_section_iter_t ;
typedef scalar_t__ bt_status_t ;
struct TYPE_13__ {char* address; } ;
typedef TYPE_5__ bt_bdaddr_t ;
typedef int BD_ADDR ;


 int BTC_BLE_STORAGE_DEV_TYPE_STR ;
 int BTM_LE_KEY_PCSRK ;
 int BTM_LE_KEY_PENC ;
 int BTM_LE_KEY_PID ;
 int BT_DEVICE_TYPE_BLE ;
 int BT_OCTET16_LEN ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLE_CSR_KEY_MASK ;
 int ESP_BLE_ENC_KEY_MASK ;
 int ESP_BLE_ID_KEY_MASK ;
 scalar_t__ _btc_storage_get_ble_bonding_key (TYPE_5__*,int ,char*,int) ;
 int btc_config_get_int (char const*,int ,int*) ;
 int btc_config_lock () ;
 int * btc_config_section_begin () ;
 int const* btc_config_section_end () ;
 char* btc_config_section_name (int const*) ;
 int * btc_config_section_next (int const*) ;
 int btc_config_unlock () ;
 int memcpy (int *,char*,int) ;
 int string_is_bdaddr (char const*) ;
 int string_to_bdaddr (char const*,TYPE_5__*) ;

bt_status_t btc_storage_get_bonded_ble_devices_list(esp_ble_bond_dev_t *bond_dev, int dev_num)
{
    bt_bdaddr_t bd_addr;
    char buffer[sizeof(tBTM_LE_KEY_VALUE)] = {0};

    btc_config_lock();
    for (const btc_config_section_iter_t *iter = btc_config_section_begin(); iter != btc_config_section_end();
            iter = btc_config_section_next(iter)) {

        if (dev_num-- <= 0) {
            break;
        }
        uint32_t device_type = 0;
        const char *name = btc_config_section_name(iter);

        if (!string_is_bdaddr(name) ||
                !btc_config_get_int(name, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&device_type) ||
                !(device_type & BT_DEVICE_TYPE_BLE)) {
            dev_num ++;
            continue;
        }

        string_to_bdaddr(name, &bd_addr);
        memcpy(bond_dev->bd_addr, bd_addr.address, sizeof(bt_bdaddr_t));

        if (_btc_storage_get_ble_bonding_key(&bd_addr, BTM_LE_KEY_PENC, buffer, sizeof(tBTM_LE_PENC_KEYS)) == BT_STATUS_SUCCESS) {
            bond_dev->bond_key.key_mask |= ESP_BLE_ENC_KEY_MASK;
            memcpy(&bond_dev->bond_key.penc_key, buffer, sizeof(tBTM_LE_PENC_KEYS));
        }

        if (_btc_storage_get_ble_bonding_key(&bd_addr, BTM_LE_KEY_PCSRK, buffer, sizeof(tBTM_LE_PCSRK_KEYS)) == BT_STATUS_SUCCESS) {
            bond_dev->bond_key.key_mask |= ESP_BLE_CSR_KEY_MASK;
            memcpy(&bond_dev->bond_key.pcsrk_key, buffer, sizeof(tBTM_LE_PCSRK_KEYS));
        }

        if (_btc_storage_get_ble_bonding_key(&bd_addr, BTM_LE_KEY_PID, buffer, sizeof(tBTM_LE_PID_KEYS)) == BT_STATUS_SUCCESS) {
            bond_dev->bond_key.key_mask |= ESP_BLE_ID_KEY_MASK;
            tBTM_LE_PID_KEYS *pid_key = (tBTM_LE_PID_KEYS *) buffer;
            memcpy(&bond_dev->bond_key.pid_key.irk, pid_key->irk, BT_OCTET16_LEN);
            bond_dev->bond_key.pid_key.addr_type = pid_key->addr_type;
            memcpy(&bond_dev->bond_key.pid_key.static_addr, pid_key->static_addr, sizeof(BD_ADDR));
        }

        bond_dev++;
    }
    btc_config_unlock();

    return BT_STATUS_SUCCESS;
}
