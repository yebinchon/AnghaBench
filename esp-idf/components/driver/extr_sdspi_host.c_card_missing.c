
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gpio_cd; } ;


 scalar_t__ GPIO_UNUSED ;
 int gpio_get_level (scalar_t__) ;
 TYPE_1__* s_slots ;

__attribute__((used)) static bool card_missing(int slot)
{
    if (s_slots[slot].gpio_cd == GPIO_UNUSED) {
        return 0;
    }
    return gpio_get_level(s_slots[slot].gpio_cd) == 1;
}
