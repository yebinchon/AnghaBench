
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {struct TYPE_15__* mac; } ;
typedef TYPE_1__ const uint8_t ;
typedef int phy_rf_module_t ;
typedef TYPE_1__ esp_phy_init_data_t ;
typedef scalar_t__ esp_phy_calibration_mode_t ;
typedef TYPE_1__ const esp_phy_calibration_data_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ DEEPSLEEP_RESET ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_RST_BROWNOUT ;
 scalar_t__ PHY_RF_CAL_FULL ;
 scalar_t__ PHY_RF_CAL_NONE ;
 scalar_t__ PHY_RF_CAL_PARTIAL ;
 int TAG ;
 int abort () ;
 scalar_t__ calloc (int,int) ;
 int esp_efuse_mac_get_default (TYPE_1__ const*) ;
 TYPE_1__* esp_phy_get_init_data () ;
 scalar_t__ esp_phy_load_cal_data_from_nvs (TYPE_1__ const*) ;
 int esp_phy_reduce_tx_power (TYPE_1__*) ;
 int esp_phy_release_init_data (TYPE_1__ const*) ;
 int esp_phy_rf_init (TYPE_1__ const*,scalar_t__,TYPE_1__ const*,int ) ;
 scalar_t__ esp_phy_store_cal_data_to_nvs (TYPE_1__ const*) ;
 scalar_t__ esp_reset_reason () ;
 int free (TYPE_1__ const*) ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 scalar_t__ rtc_get_reset_reason (int ) ;

void esp_phy_load_cal_and_init(phy_rf_module_t module)
{
    esp_phy_calibration_data_t* cal_data =
            (esp_phy_calibration_data_t*) calloc(sizeof(esp_phy_calibration_data_t), 1);
    if (cal_data == ((void*)0)) {
        ESP_LOGE(TAG, "failed to allocate memory for RF calibration data");
        abort();
    }
    const esp_phy_init_data_t* init_data = esp_phy_get_init_data();
    if (init_data == ((void*)0)) {
        ESP_LOGE(TAG, "failed to obtain PHY init data");
        abort();
    }
    esp_phy_rf_init(init_data, PHY_RF_CAL_FULL, cal_data, module);






    esp_phy_release_init_data(init_data);


    free(cal_data);
}
