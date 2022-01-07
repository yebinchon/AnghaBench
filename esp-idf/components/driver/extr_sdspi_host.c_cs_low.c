
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpio_cs; } ;


 int gpio_set_level (int ,int ) ;
 TYPE_1__* s_slots ;

__attribute__((used)) static void cs_low(int slot)
{
    gpio_set_level(s_slots[slot].gpio_cs, 0);
}
