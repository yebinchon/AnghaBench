
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int method; int delay_us; int result; int done; } ;
typedef TYPE_1__ delay_test_arg_t ;


 int TEST_FAIL () ;
 int ets_delay_us (int) ;
 int portTICK_PERIOD_MS ;
 scalar_t__ ref_clock_get () ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void test_delay_task(void* p)
{
    delay_test_arg_t* arg = (delay_test_arg_t*) p;
    vTaskDelay(1);
    uint64_t start = ref_clock_get();
    switch (arg->method) {
        case 0:
            ets_delay_us(arg->delay_us);
            break;
        case 1:
            vTaskDelay(arg->delay_us / portTICK_PERIOD_MS / 1000);
            break;
        default:
            TEST_FAIL();
    }
    uint64_t stop = ref_clock_get();

    arg->result = (int) (stop - start);
    xSemaphoreGive(arg->done);
    vTaskDelete(((void*)0));
}
