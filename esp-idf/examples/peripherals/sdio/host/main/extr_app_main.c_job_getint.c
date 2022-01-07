
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_slave_context_t ;


 int ESP_LOGI (int ,char*) ;
 int JOB_SEND_INT ;
 int TAG ;
 int slave_inform_job (int *,int ) ;

void job_getint(esp_slave_context_t *context)
{
    ESP_LOGI(TAG, "========JOB: get interrupts from slave========");
    slave_inform_job(context, JOB_SEND_INT);
}
