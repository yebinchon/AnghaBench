
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* buffer; } ;
typedef TYPE_1__ example_espnow_send_param_t ;


 int esp_now_deinit () ;
 int free (TYPE_1__*) ;
 int s_example_espnow_queue ;
 int vSemaphoreDelete (int ) ;

__attribute__((used)) static void example_espnow_deinit(example_espnow_send_param_t *send_param)
{
    free(send_param->buffer);
    free(send_param);
    vSemaphoreDelete(s_example_espnow_queue);
    esp_now_deinit();
}
