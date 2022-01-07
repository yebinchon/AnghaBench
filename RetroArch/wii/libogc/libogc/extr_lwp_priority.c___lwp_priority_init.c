
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__* _prio_bitmap ;
 scalar_t__ _prio_major_bitmap ;

void __lwp_priority_init()
{
 u32 index;

 _prio_major_bitmap = 0;
 for(index=0;index<16;index++)
  _prio_bitmap[index] = 0;

}
