
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvs_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 scalar_t__ ESP_ERR_NVS_NOT_FOUND ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 int UINT16_MAX ;
 int assert (int) ;
 int nvs_close (int ) ;
 int nvs_commit (int ) ;
 int nvs_flash_init () ;
 scalar_t__ nvs_get_u32 (int ,char const*,int*) ;
 int nvs_open (char const*,int ,int *) ;
 int nvs_set_u32 (int ,char const*,int) ;
 int printf (char*,int) ;
 int ulp_edge_count ;

__attribute__((used)) static void update_pulse_count(void)
{
    const char* namespace = "plusecnt";
    const char* count_key = "count";

    ESP_ERROR_CHECK( nvs_flash_init() );
    nvs_handle_t handle;
    ESP_ERROR_CHECK( nvs_open(namespace, NVS_READWRITE, &handle));
    uint32_t pulse_count = 0;
    esp_err_t err = nvs_get_u32(handle, count_key, &pulse_count);
    assert(err == ESP_OK || err == ESP_ERR_NVS_NOT_FOUND);
    printf("Read pulse count from NVS: %5d\n", pulse_count);


    uint32_t pulse_count_from_ulp = (ulp_edge_count & UINT16_MAX) / 2;

    ulp_edge_count = ulp_edge_count % 2;
    printf("Pulse count from ULP: %5d\n", pulse_count_from_ulp);


    pulse_count += pulse_count_from_ulp;
    ESP_ERROR_CHECK(nvs_set_u32(handle, count_key, pulse_count));
    ESP_ERROR_CHECK(nvs_commit(handle));
    nvs_close(handle);
    printf("Wrote updated pulse count to NVS: %5d\n", pulse_count);
}
