
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct Slot {TYPE_1__ state; } ;



int get_slot(struct Slot * slot, int mdsl)
{
   return (mdsl + slot->state.num) & 0x1f;
}
