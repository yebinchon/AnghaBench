
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ble_uuid_t ;


 int BLE_UUID_STR_LEN ;
 int DEBUG ;
 int MODLOG_DFLT (int ,char*,int ) ;
 int ble_uuid_to_str (int const*,char*) ;

void
print_uuid(const ble_uuid_t *uuid)
{
    char buf[BLE_UUID_STR_LEN];

    MODLOG_DFLT(DEBUG, "%s", ble_uuid_to_str(uuid, buf));
}
