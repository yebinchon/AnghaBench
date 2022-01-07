
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int SIG_WPS_NUM ;
 int WPS_TASK_STACK_SIZE ;
 int os_bzero (int ,int ) ;
 int pdPASS ;
 int portMAX_DELAY ;
 void* s_wps_api_sem ;
 int s_wps_data_lock ;
 int s_wps_queue ;
 int s_wps_sig_cnt ;
 int * s_wps_task_create_sem ;
 int s_wps_task_hdl ;
 int vSemaphoreDelete (int *) ;
 int wpa_printf (int ,char*,...) ;
 int wps_rxq_init () ;
 int wps_task ;
 int wps_task_deinit () ;
 int xQueueCreate (int ,int) ;
 void* xSemaphoreCreateCounting (int,int ) ;
 int xSemaphoreCreateRecursiveMutex () ;
 int xSemaphoreTake (int *,int ) ;
 int xTaskCreate (int ,char*,int ,int *,int,int *) ;

int wps_task_init(void)
{
    int ret = 0;



    wps_task_deinit();

    s_wps_data_lock = xSemaphoreCreateRecursiveMutex();
    if (!s_wps_data_lock) {
        wpa_printf(MSG_ERROR, "wps task init: failed to alloc data lock");
        goto _wps_no_mem;
    }

    s_wps_api_sem = xSemaphoreCreateCounting(1, 0);
    if (!s_wps_api_sem) {
        wpa_printf(MSG_ERROR, "wps task init: failed to create api sem");
        goto _wps_no_mem;
    }

    s_wps_task_create_sem = xSemaphoreCreateCounting(1, 0);
    if (!s_wps_task_create_sem) {
        wpa_printf(MSG_ERROR, "wps task init: failed to create task sem");
        goto _wps_no_mem;
    }

    os_bzero(s_wps_sig_cnt, SIG_WPS_NUM);
    s_wps_queue = xQueueCreate(SIG_WPS_NUM, sizeof( void * ) );
    if (!s_wps_queue) {
        wpa_printf(MSG_ERROR, "wps task init: failed to alloc queue");
        goto _wps_no_mem;
    }

    wps_rxq_init();

    ret = xTaskCreate(wps_task, "wpsT", WPS_TASK_STACK_SIZE, ((void*)0), 2, &s_wps_task_hdl);
    if (pdPASS != ret) {
        wpa_printf(MSG_ERROR, "wps enable: failed to create task");
        goto _wps_no_mem;
    }

    xSemaphoreTake(s_wps_task_create_sem, portMAX_DELAY);
    vSemaphoreDelete(s_wps_task_create_sem);
    s_wps_task_create_sem = ((void*)0);

    wpa_printf(MSG_DEBUG, "wifi wps enable: task prio:%d, stack:%d", 2, WPS_TASK_STACK_SIZE);
    return ESP_OK;

_wps_no_mem:
    wps_task_deinit();
    return ESP_ERR_NO_MEM;
}
