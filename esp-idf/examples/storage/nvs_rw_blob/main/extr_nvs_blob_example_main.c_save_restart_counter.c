
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvs_handle_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NVS_NOT_FOUND ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 int STORAGE_NAMESPACE ;
 int nvs_close (int ) ;
 scalar_t__ nvs_commit (int ) ;
 scalar_t__ nvs_get_i32 (int ,char*,scalar_t__*) ;
 scalar_t__ nvs_open (int ,int ,int *) ;
 scalar_t__ nvs_set_i32 (int ,char*,scalar_t__) ;

esp_err_t save_restart_counter(void)
{
    nvs_handle_t my_handle;
    esp_err_t err;


    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) return err;


    int32_t restart_counter = 0;
    err = nvs_get_i32(my_handle, "restart_conter", &restart_counter);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;


    restart_counter++;
    err = nvs_set_i32(my_handle, "restart_conter", restart_counter);
    if (err != ESP_OK) return err;





    err = nvs_commit(my_handle);
    if (err != ESP_OK) return err;


    nvs_close(my_handle);
    return ESP_OK;
}
