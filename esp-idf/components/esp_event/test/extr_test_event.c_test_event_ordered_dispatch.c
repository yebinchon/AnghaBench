
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* arr; int index; } ;
typedef TYPE_1__ ordered_data_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;



__attribute__((used)) static void test_event_ordered_dispatch(void* event_handler_arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    int *arg = (int*) event_handler_arg;
    ordered_data_t *data = *((ordered_data_t**) (event_data));

    data->arr[data->index++] = *arg;
}
