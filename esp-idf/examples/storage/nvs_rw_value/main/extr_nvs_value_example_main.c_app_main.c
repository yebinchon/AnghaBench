
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvs_handle_t ;
typedef int int32_t ;
typedef int esp_err_t ;


 int ESP_ERROR_CHECK (int) ;
 int ESP_ERR_NVS_NEW_VERSION_FOUND ;

 int ESP_ERR_NVS_NO_FREE_PAGES ;

 int NVS_READWRITE ;
 char* esp_err_to_name (int) ;
 int esp_restart () ;
 int fflush (int ) ;
 int nvs_close (int ) ;
 int nvs_commit (int ) ;
 int nvs_flash_erase () ;
 int nvs_flash_init () ;
 int nvs_get_i32 (int ,char*,int*) ;
 int nvs_open (char*,int ,int *) ;
 int nvs_set_i32 (int ,char*,int) ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int stdout ;
 int vTaskDelay (int) ;

void app_main(void)
{

    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {


        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    }
    ESP_ERROR_CHECK( err );


    printf("\n");
    printf("Opening Non-Volatile Storage (NVS) handle... ");
    nvs_handle_t my_handle;
    err = nvs_open("storage", NVS_READWRITE, &my_handle);
    if (err != 128) {
        printf("Error (%s) opening NVS handle!\n", esp_err_to_name(err));
    } else {
        printf("Done\n");


        printf("Reading restart counter from NVS ... ");
        int32_t restart_counter = 0;
        err = nvs_get_i32(my_handle, "restart_counter", &restart_counter);
        switch (err) {
            case 128:
                printf("Done\n");
                printf("Restart counter = %d\n", restart_counter);
                break;
            case 129:
                printf("The value is not initialized yet!\n");
                break;
            default :
                printf("Error (%s) reading!\n", esp_err_to_name(err));
        }


        printf("Updating restart counter in NVS ... ");
        restart_counter++;
        err = nvs_set_i32(my_handle, "restart_counter", restart_counter);
        printf((err != 128) ? "Failed!\n" : "Done\n");





        printf("Committing updates in NVS ... ");
        err = nvs_commit(my_handle);
        printf((err != 128) ? "Failed!\n" : "Done\n");


        nvs_close(my_handle);
    }

    printf("\n");


    for (int i = 10; i >= 0; i--) {
        printf("Restarting in %d seconds...\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    printf("Restarting now.\n");
    fflush(stdout);
    esp_restart();
}
