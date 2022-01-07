
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_gatt_svc_def {struct ble_gatt_chr_def* characteristics; int type; } ;
struct ble_gatt_chr_def {int dummy; } ;


 int BLE_GATT_SVC_TYPE_PRIMARY ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 scalar_t__ calloc (int,int) ;
 int num_chr_dsc ;

__attribute__((used)) static int
ble_gatt_add_primary_svcs(struct ble_gatt_svc_def *gatt_db_svcs, int char_count)
{


    num_chr_dsc = char_count;
    gatt_db_svcs->type = BLE_GATT_SVC_TYPE_PRIMARY;




    gatt_db_svcs->characteristics = (struct ble_gatt_chr_def *) calloc((char_count + 1),
                                    sizeof(struct ble_gatt_chr_def));
    if (gatt_db_svcs->characteristics == ((void*)0)) {
        ESP_LOGE(TAG, "Memory allocation for GATT characteristics failed");
        return ESP_ERR_NO_MEM;
    }
    return 0;
}
