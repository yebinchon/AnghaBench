
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int locked; scalar_t__ srambuf; scalar_t__ enabled; } ;


 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 TYPE_1__ sramcntrl ;

__attribute__((used)) static void* __locksram(u32 loc)
{
 u32 level;

 _CPU_ISR_Disable(level);
 if(!sramcntrl.locked) {
  sramcntrl.enabled = level;
  sramcntrl.locked = 1;
  return (void*)((u32)sramcntrl.srambuf+loc);
 }
 _CPU_ISR_Restore(level);
 return ((void*)0);
}
