
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GATTS_TABLE_TAG ;
 int cmd_cmd_queue ;
 int esp_log_buffer_char (int ,char*,int ) ;
 int free (int *) ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int strlen (char*) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (int ,int **,int ) ;

void spp_cmd_task(void * arg)
{
    uint8_t * cmd_id;

    for(;;){
        vTaskDelay(50 / portTICK_PERIOD_MS);
        if(xQueueReceive(cmd_cmd_queue, &cmd_id, portMAX_DELAY)) {
            esp_log_buffer_char(GATTS_TABLE_TAG,(char *)(cmd_id),strlen((char *)cmd_id));
            free(cmd_id);
        }
    }
    vTaskDelete(((void*)0));
}
