
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used_transaction_count; } ;


 TYPE_1__* s_slots ;

__attribute__((used)) static void release_transaction(int slot)
{
    --s_slots[slot].used_transaction_count;
}
