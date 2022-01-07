
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u32 ScspTimerCyclesLeft(u16 timer, u8 timer_scale)
{
   return (0xFF00 - timer) << timer_scale;
}
