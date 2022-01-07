
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int mask; int addr; int val; int readonly; } ;


 int sprot_item_count ;
 TYPE_1__* sprot_items ;

__attribute__((used)) static u16 *carthw_sprot_get_val(u32 a, int rw_only)
{
  int i;

  for (i = 0; i < sprot_item_count; i++)
    if ((a & sprot_items[i].mask) == sprot_items[i].addr)
      if (!rw_only || !sprot_items[i].readonly)
        return &sprot_items[i].val;

  return ((void*)0);
}
