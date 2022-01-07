
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;



__attribute__((used)) static void test_event_simple_handler_template(void* handler_arg, esp_event_base_t base, int32_t id, void* event_arg)
{
    int* count = (int*) handler_arg;
    (*count)++;
}
