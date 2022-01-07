
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ counter_bias; } ;
typedef TYPE_1__ syssram ;


 scalar_t__ CONF_GetCounterBias (int*) ;
 int TB_TIMER_CLOCK ;
 int __SYS_GetRTC (int*) ;
 TYPE_1__* __SYS_LockSram () ;
 int __SYS_UnlockSram (int ) ;

u64 SYS_Time()
{
 u64 current_time = 0;
    u32 gmtime =0;
    __SYS_GetRTC(&gmtime);
    current_time = gmtime;





 syssram* sram = __SYS_LockSram();
 current_time += sram->counter_bias;
 __SYS_UnlockSram(0);

 return (TB_TIMER_CLOCK * 1000) * current_time;
}
