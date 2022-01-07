
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_crc_enabled; } ;


 TYPE_1__* s_slots ;

__attribute__((used)) static bool data_crc_enabled(int slot)
{
    return s_slots[slot].data_crc_enabled;
}
