
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_FAIL ;
 int ESP_OK ;
 int ble_register_cli () ;
 int * cli_handle ;
 int * cli_task ;
 int scli_task ;
 int * xQueueCreate (int,int) ;
 int xTaskCreate (int ,char*,int,void*,int,int **) ;

int scli_init(void)
{

    ble_register_cli();

    xTaskCreate(scli_task, "scli_cli", 4096, (void *) 0, 3, &cli_task);
    if (cli_task == ((void*)0)) {
        return ESP_FAIL;
    }
    cli_handle = xQueueCreate( 1, sizeof(int) );
    if (cli_handle == ((void*)0)) {
        return ESP_FAIL;
    }
    return ESP_OK;
}
