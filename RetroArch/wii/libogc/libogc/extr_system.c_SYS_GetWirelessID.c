
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_3__ {size_t* wirelessPad_id; } ;
typedef TYPE_1__ syssramex ;


 TYPE_1__* __SYS_LockSramEx () ;
 int __SYS_UnlockSramEx (int ) ;

u32 SYS_GetWirelessID(u32 chan)
{
 u16 id;
 syssramex *sram;

 id = 0;
 sram = __SYS_LockSramEx();
 id = sram->wirelessPad_id[chan];
 __SYS_UnlockSramEx(0);
 return id;
}
