
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpio_num_t ;
struct TYPE_3__ {void* intr_st; } ;
struct TYPE_4__ {TYPE_1__ status1_w1tc; void* status_w1tc; } ;


 void* BIT (int) ;
 TYPE_2__ GPIO ;

__attribute__((used)) static void gpio_intr_status_clr(gpio_num_t gpio_num)
{
    if (gpio_num < 32) {
        GPIO.status_w1tc = BIT(gpio_num);
    } else {
        GPIO.status1_w1tc.intr_st = BIT(gpio_num - 32);
    }
}
