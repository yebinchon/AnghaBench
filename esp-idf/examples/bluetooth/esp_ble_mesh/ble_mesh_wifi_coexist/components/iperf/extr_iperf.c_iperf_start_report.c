
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_OK ;
 int IPERF_REPORT_TASK_NAME ;
 int IPERF_REPORT_TASK_PRIORITY ;
 int IPERF_REPORT_TASK_STACK ;
 int TAG ;
 int iperf_report_task ;
 int pdPASS ;
 scalar_t__ portNUM_PROCESSORS ;
 int xTaskCreatePinnedToCore (int ,int ,int ,int *,int ,int *,scalar_t__) ;

esp_err_t iperf_start_report(void)
{
    int ret;

    ret = xTaskCreatePinnedToCore(iperf_report_task, IPERF_REPORT_TASK_NAME, IPERF_REPORT_TASK_STACK, ((void*)0), IPERF_REPORT_TASK_PRIORITY, ((void*)0), portNUM_PROCESSORS - 1);

    if (ret != pdPASS) {
        ESP_LOGE(TAG, "create task %s failed", IPERF_REPORT_TASK_NAME);
        return ESP_FAIL;
    }

    return ESP_OK;
}
