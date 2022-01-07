
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int esp_mesh_p2p_rx_main ;
 int esp_mesh_p2p_tx_main ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

esp_err_t esp_mesh_comm_p2p_start(void)
{
    static bool is_comm_p2p_started = 0;
    if (!is_comm_p2p_started) {
        is_comm_p2p_started = 1;
        xTaskCreate(esp_mesh_p2p_tx_main, "MPTX", 3072, ((void*)0), 5, ((void*)0));
        xTaskCreate(esp_mesh_p2p_rx_main, "MPRX", 3072, ((void*)0), 5, ((void*)0));
    }
    return ESP_OK;
}
