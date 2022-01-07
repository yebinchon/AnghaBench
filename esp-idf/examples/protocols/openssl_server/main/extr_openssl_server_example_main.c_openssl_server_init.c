
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xTaskHandle ;


 int ESP_LOGI (int ,char*,int ) ;
 int OPENSSL_EXAMPLE_TASK_NAME ;
 int OPENSSL_EXAMPLE_TASK_PRIORITY ;
 int OPENSSL_EXAMPLE_TASK_STACK_WORDS ;
 int TAG ;
 int openssl_example_task ;
 int pdPASS ;
 int xTaskCreate (int ,int ,int ,int *,int ,int *) ;

__attribute__((used)) static void openssl_server_init(void)
{
    int ret;
    xTaskHandle openssl_handle;

    ret = xTaskCreate(openssl_example_task,
                      OPENSSL_EXAMPLE_TASK_NAME,
                      OPENSSL_EXAMPLE_TASK_STACK_WORDS,
                      ((void*)0),
                      OPENSSL_EXAMPLE_TASK_PRIORITY,
                      &openssl_handle);

    if (ret != pdPASS) {
        ESP_LOGI(TAG, "create task %s failed", OPENSSL_EXAMPLE_TASK_NAME);
    }
}
