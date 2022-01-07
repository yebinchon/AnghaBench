
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hold_force; } ;
typedef TYPE_2__ rtc_gpio_desc_t ;
struct TYPE_5__ {scalar_t__ rtc_pad_force_hold; } ;
struct TYPE_7__ {TYPE_1__ rtc_pwc; } ;


 int GPIO_PIN_COUNT ;
 int REG_CLR_BIT (int ,scalar_t__) ;
 TYPE_4__ RTCCNTL ;
 int RTC_CNTL_HOLD_FORCE_REG ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 TYPE_2__* rtc_gpio_desc ;
 int rtc_spinlock ;

void rtc_gpio_force_hold_dis_all(void)
{
}
