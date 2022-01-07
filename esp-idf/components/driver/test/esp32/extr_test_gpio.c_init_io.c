
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long gpio_num_t ;
struct TYPE_3__ {unsigned long long pin_bit_mask; scalar_t__ pull_up_en; scalar_t__ pull_down_en; int mode; int intr_type; } ;
typedef TYPE_1__ gpio_config_t ;


 int GPIO_MODE_OUTPUT ;
 unsigned long long GPIO_OUTPUT_MAX ;
 int GPIO_PIN_INTR_DISABLE ;
 int TEST_ASSERT (int) ;

__attribute__((used)) static gpio_config_t init_io(gpio_num_t num)
{
    TEST_ASSERT(num < GPIO_OUTPUT_MAX);
    gpio_config_t io_conf;
    io_conf.intr_type = GPIO_PIN_INTR_DISABLE;
    io_conf.mode = GPIO_MODE_OUTPUT;
    io_conf.pin_bit_mask = (1ULL << num);
    io_conf.pull_down_en = 0;
    io_conf.pull_up_en = 0;
    return io_conf;
}
