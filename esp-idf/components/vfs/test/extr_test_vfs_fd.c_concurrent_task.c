
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; int path; } ;
typedef TYPE_1__ concurrent_test_task_param_t ;


 int TEST_ASSERT_NOT_EQUAL (int const,int) ;
 int const close (int const) ;
 int open (int ,int ,int ) ;
 int test_delay_rand_ms (int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void concurrent_task(void *param)
{
    concurrent_test_task_param_t *task_param = (concurrent_test_task_param_t *) param;

    test_delay_rand_ms(10);
    for (int i = 0; i < 10; ++i) {
        const int global_fd = open(task_param->path, 0, 0);
        TEST_ASSERT_NOT_EQUAL(global_fd, -1);
        test_delay_rand_ms(10);
        TEST_ASSERT_NOT_EQUAL(close(global_fd), -1);
        test_delay_rand_ms(10);
    }
    xSemaphoreGive(task_param->done);
    vTaskDelete(((void*)0));
}
