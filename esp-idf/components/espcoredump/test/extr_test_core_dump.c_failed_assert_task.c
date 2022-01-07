
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCI_FAIL_ASSERT ;
 int assert (int ) ;
 int crash_flags ;
 int fflush (int ) ;
 int portTICK_RATE_MS ;
 int printf (char*) ;
 int stdout ;
 int vTaskDelay (int) ;

void failed_assert_task(void *pvParameter)
{
    printf("Task 'failed_assert_task' start.\n");
    while (1) {
        vTaskDelay(1000 / portTICK_RATE_MS);
        printf("Task 'failed_assert_task' run.\n");
        if(crash_flags & TCI_FAIL_ASSERT) {
            printf("Assert.\n");
            assert(0);
        }
    }
    fflush(stdout);
}
