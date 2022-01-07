
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ performed; scalar_t__ expected; int done; } ;
typedef TYPE_1__ performance_data_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;


 int xSemaphoreGive (int ) ;

__attribute__((used)) static void test_event_performance_handler(void* event_handler_arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    performance_data_t* data = (performance_data_t*) event_handler_arg;

    data->performed++;

    if (data->performed >= data->expected) {
        xSemaphoreGive(data->done);
    }
}
