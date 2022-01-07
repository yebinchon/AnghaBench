
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvs_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NVS_NOT_FOUND ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 int STORAGE_NAMESPACE ;
 int free (int*) ;
 int* malloc (size_t) ;
 int nvs_close (int ) ;
 scalar_t__ nvs_commit (int ) ;
 scalar_t__ nvs_get_blob (int ,char*,int*,size_t*) ;
 scalar_t__ nvs_open (int ,int ,int *) ;
 scalar_t__ nvs_set_blob (int ,char*,int*,size_t) ;
 int portTICK_PERIOD_MS ;
 int xTaskGetTickCount () ;

esp_err_t save_run_time(void)
{
    nvs_handle_t my_handle;
    esp_err_t err;


    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) return err;


    size_t required_size = 0;
    err = nvs_get_blob(my_handle, "run_time", ((void*)0), &required_size);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;


    uint32_t* run_time = malloc(required_size + sizeof(uint32_t));
    if (required_size > 0) {
        err = nvs_get_blob(my_handle, "run_time", run_time, &required_size);
        if (err != ESP_OK) {
            free(run_time);
            return err;
        }
    }


    required_size += sizeof(uint32_t);
    run_time[required_size / sizeof(uint32_t) - 1] = xTaskGetTickCount() * portTICK_PERIOD_MS;
    err = nvs_set_blob(my_handle, "run_time", run_time, required_size);
    free(run_time);

    if (err != ESP_OK) return err;


    err = nvs_commit(my_handle);
    if (err != ESP_OK) return err;


    nvs_close(my_handle);
    return ESP_OK;
}
