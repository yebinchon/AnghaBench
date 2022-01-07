
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;
typedef int wifi_config_t ;


 int EMPH_STR (char*) ;
 int ESP_ERR_WIFI_NOT_INIT ;
 int ESP_IF_WIFI_STA ;
 int ESP_LOGI (int ,int ) ;
 int TAG ;
 int TEST_ESP_ERR (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int WIFI_MODE_STA ;
 int esp_wifi_deinit () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_set_config (int ,int *) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;
 int esp_wifi_stop () ;

__attribute__((used)) static void test_wifi_start_stop(wifi_init_config_t *cfg, wifi_config_t* wifi_config)
{
    ESP_LOGI(TAG, EMPH_STR("esp_wifi_stop"));
    TEST_ESP_ERR(ESP_ERR_WIFI_NOT_INIT, esp_wifi_stop());
    ESP_LOGI(TAG, EMPH_STR("esp_wifi_init"));
    TEST_ESP_OK(esp_wifi_init(cfg));
    ESP_LOGI(TAG, EMPH_STR("esp_wifi_set_mode"));
    TEST_ESP_OK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_LOGI(TAG, EMPH_STR("esp_wifi_set_config"));
    TEST_ESP_OK(esp_wifi_set_config(ESP_IF_WIFI_STA, wifi_config));

    ESP_LOGI(TAG, EMPH_STR("esp_wifi_start..."));
    TEST_ESP_OK(esp_wifi_start());

    ESP_LOGI(TAG, EMPH_STR("esp_wifi_stop..."));
    TEST_ESP_OK( esp_wifi_stop() );
    ESP_LOGI(TAG, EMPH_STR("esp_wifi_deinit..."));
    TEST_ESP_OK(esp_wifi_deinit());
}
