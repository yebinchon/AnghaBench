
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int diff_ticks (int ,int ) ;
 int ticks_to_nanosecs (int ) ;

u32 diff_nsec(u64 start,u64 end)
{
 u64 diff = diff_ticks(start,end);
 return ticks_to_nanosecs(diff);
}
