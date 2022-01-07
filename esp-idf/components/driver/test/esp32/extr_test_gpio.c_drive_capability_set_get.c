
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int gpio_drive_cap_t ;
typedef int gpio_config_t ;


 int ESP_ERR_INVALID_ARG ;
 int GPIO_DRIVE_CAP_MAX ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL_INT (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int gpio_config (int *) ;
 int gpio_get_drive_capability (int ,int *) ;
 int gpio_set_drive_capability (int ,int ) ;
 int init_io (int ) ;

__attribute__((used)) static void drive_capability_set_get(gpio_num_t num, gpio_drive_cap_t capability)
{
    gpio_config_t pad_io = init_io(num);
    TEST_ESP_OK(gpio_config(&pad_io));
    TEST_ASSERT(gpio_set_drive_capability(num, GPIO_DRIVE_CAP_MAX) == ESP_ERR_INVALID_ARG);

    gpio_drive_cap_t cap;
    TEST_ESP_OK(gpio_set_drive_capability(num, capability));
    TEST_ESP_OK(gpio_get_drive_capability(num, &cap));
    TEST_ASSERT_EQUAL_INT(cap, capability);
}
