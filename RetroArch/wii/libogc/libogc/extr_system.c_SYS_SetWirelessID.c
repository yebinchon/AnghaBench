
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__* wirelessPad_id; } ;
typedef TYPE_1__ syssramex ;


 TYPE_1__* __SYS_LockSramEx () ;
 int __SYS_UnlockSramEx (size_t) ;

void SYS_SetWirelessID(u32 chan,u32 id)
{
 u32 write;
 syssramex *sram;

 write = 0;
 sram = __SYS_LockSramEx();
 if(sram->wirelessPad_id[chan]!=(u16)id) {
  sram->wirelessPad_id[chan] = (u16)id;
  write = 1;
 }
 __SYS_UnlockSramEx(write);
}
