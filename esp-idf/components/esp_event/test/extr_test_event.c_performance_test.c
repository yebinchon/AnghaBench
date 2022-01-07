
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double performed; int expected; int done; } ;
typedef TYPE_1__ performance_data_t ;
typedef double int64_t ;
struct TYPE_8__ {int * task; } ;
typedef TYPE_2__ esp_event_loop_instance_t ;
typedef scalar_t__ esp_event_loop_handle_t ;
struct TYPE_9__ {int task_priority; int task_stack_size; int * task_name; } ;
typedef TYPE_3__ esp_event_loop_args_t ;
typedef int * TaskHandle_t ;


 int ESP_LOGI (int ,char*,int) ;
 int ESP_OK ;
 int EVENT_DISPATCH ;
 int EVENT_DISPATCH_PSRAM ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int,double) ;
 int TEST_CONFIG_BASES ;
 int TEST_CONFIG_IDS ;
 int TEST_PERFORMANCE_GREATER_THAN (int ,char*,int) ;
 int TEST_SETUP () ;
 int TEST_TEARDOWN () ;
 double esp_event_handler_register_with (scalar_t__,char const*,int,int ,TYPE_1__*) ;
 double esp_event_loop_create (TYPE_3__*,scalar_t__*) ;
 double esp_event_loop_delete (scalar_t__) ;
 double esp_event_post_to (scalar_t__,char const*,int,int *,int ,int ) ;
 double esp_timer_get_time () ;
 int loop_run_task ;
 int portMAX_DELAY ;
 int rand () ;
 TYPE_3__ test_event_get_default_loop_args () ;
 int test_event_performance_handler ;
 int vSemaphoreDelete (int ) ;
 int xSemaphoreCreateBinary () ;
 int xSemaphoreTake (int ,int ) ;
 int xTaskCreate (int ,char*,int ,void*,int ,int **) ;

__attribute__((used)) static void performance_test(bool dedicated_task)
{


    unsigned int _rand __attribute__((unused)) = rand();

    TEST_SETUP();

    const char test_base[] = "qwertyuiopasdfghjklzxvbnmmnbvcxzqwertyuiopasdfghjklzxvbnmmnbvcxz";





    esp_event_loop_args_t loop_args = test_event_get_default_loop_args();
    esp_event_loop_handle_t loop;

    if (!dedicated_task) {
        loop_args.task_name = ((void*)0);
    }

    TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_create(&loop_args, &loop));

    performance_data_t data;


    for (int base = 0; base < (sizeof(test_base) - 1); base++) {
        for (int id = 0; id < ((sizeof(test_base) - 1) / 2); id++) {
            TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_register_with(loop, test_base + base, id, test_event_performance_handler, &data));
        }
    }

    TaskHandle_t mtask = ((void*)0);

    if (!dedicated_task) {
        xTaskCreate(loop_run_task, "loop_run", loop_args.task_stack_size, (void*) loop, loop_args.task_priority, &mtask);
    }


    float running_sum = 0;
    float running_count = 0;

    for (int bases = 1; bases <= (sizeof(test_base) - 1); bases *= 2) {
        for (int ids = 1; ids <= ((sizeof(test_base) - 1) / 2); ids *= 2) {

            data.performed = 0;
            data.expected = bases * ids;
            data.done = xSemaphoreCreateBinary();


            int post_bases[(sizeof(test_base) - 1)];
            int post_ids[((sizeof(test_base) - 1) / 2)];

            for (int i = 0; i < bases; i++) {
                post_bases[i] = i;
            }

            for (int i = 0; i < ids; i++) {
                post_ids[i] = i;
            }

            for (int i = 0; i < bases; i++) {
                int rand_a = rand() % bases;
                int rand_b = rand() % bases;

                int temp = post_bases[rand_a];
                post_bases[rand_a]= post_bases[rand_b];
                post_bases[rand_b] = temp;
            }

            for (int i = 0; i < ids; i++) {
                int rand_a = rand() % ids;
                int rand_b = rand() % ids;

                int temp = post_ids[rand_a];
                post_ids[rand_a]= post_ids[rand_b];
                post_ids[rand_b] = temp;
            }


            int64_t start = esp_timer_get_time();
            for (int base = 0; base < bases; base++) {
                for (int id = 0; id < ids; id++) {
                    TEST_ASSERT_EQUAL(ESP_OK, esp_event_post_to(loop, test_base + post_bases[base], post_ids[id], ((void*)0), 0, portMAX_DELAY));
                }
            }

            xSemaphoreTake(data.done, portMAX_DELAY);
            int64_t elapsed = esp_timer_get_time() - start;


            TEST_ASSERT_EQUAL(data.expected, data.performed);

            running_count++;
            running_sum += data.performed / (elapsed / (1000000.0));

            vSemaphoreDelete(data.done);
        }
    }

    int average = (int) (running_sum / (running_count));

    if (!dedicated_task) {
        ((esp_event_loop_instance_t*) loop)->task = mtask;
    }

    TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_delete(loop));

    TEST_TEARDOWN();







    TEST_PERFORMANCE_GREATER_THAN(EVENT_DISPATCH, "%d", average);




}
