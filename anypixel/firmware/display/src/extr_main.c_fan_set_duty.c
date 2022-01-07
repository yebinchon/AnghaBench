
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int CCR1; } ;


 TYPE_1__* TIM16 ;

void fan_set_duty(uint16_t value) {
    TIM16->CCR1 = value;
}
