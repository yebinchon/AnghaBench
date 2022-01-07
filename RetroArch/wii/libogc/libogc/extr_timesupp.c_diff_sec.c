
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int diff_ticks (int ,int ) ;
 int ticks_to_secs (int ) ;

u32 diff_sec(u64 start,u64 end)
{
 u64 diff;

 diff = diff_ticks(start,end);
 return ticks_to_secs(diff);
}
