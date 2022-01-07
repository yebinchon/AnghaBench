
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_OK ;
 int MSG_DEBUG ;
 int * STAILQ_FIRST (int *) ;
 int * s_wps_api_sem ;
 int * s_wps_data_lock ;
 int * s_wps_queue ;
 int s_wps_rxq ;
 int * s_wps_task_create_sem ;
 int * s_wps_task_hdl ;
 int vQueueDelete (int *) ;
 int vSemaphoreDelete (int *) ;
 int vTaskDelete (int *) ;
 int wpa_printf (int ,char*) ;
 int wps_rxq_deinit () ;

int wps_task_deinit(void)
{
    wpa_printf(MSG_DEBUG, "wps task deinit");

    if (s_wps_api_sem) {
        vSemaphoreDelete(s_wps_api_sem);
        s_wps_api_sem = ((void*)0);
        wpa_printf(MSG_DEBUG, "wps task deinit: free api sem");
    }

    if (s_wps_task_create_sem) {
        vSemaphoreDelete(s_wps_task_create_sem);
        s_wps_task_create_sem = ((void*)0);
        wpa_printf(MSG_DEBUG, "wps task deinit: free task create sem");
    }

    if (s_wps_queue) {
        vQueueDelete(s_wps_queue);
        s_wps_queue = ((void*)0);
        wpa_printf(MSG_DEBUG, "wps task deinit: free queue");
    }

    if (s_wps_task_hdl) {
        vTaskDelete(s_wps_task_hdl);
        s_wps_task_hdl = ((void*)0);
        wpa_printf(MSG_DEBUG, "wps task deinit: free task");
    }

    if (STAILQ_FIRST(&s_wps_rxq) != ((void*)0)){
        wps_rxq_deinit();
    }

    if (s_wps_data_lock) {
        vSemaphoreDelete(s_wps_data_lock);
        s_wps_data_lock = ((void*)0);
        wpa_printf(MSG_DEBUG, "wps task deinit: free data lock");
    }

    return ESP_OK;
}
