
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int flags; int checksum_inv; int checksum; } ;
typedef TYPE_1__ syssram ;
struct TYPE_4__ {int offset; int sync; int enabled; scalar_t__ locked; scalar_t__ srambuf; } ;


 int _CPU_ISR_Restore (int ) ;
 int __buildchecksum (int *,int *,int *) ;
 int __sram_write (scalar_t__,int,int) ;
 TYPE_2__ sramcntrl ;

__attribute__((used)) static u32 __unlocksram(u32 write,u32 loc)
{
 syssram *sram = (syssram*)sramcntrl.srambuf;

 if(write) {
  if(!loc) {
   if((sram->flags&0x03)>0x02) sram->flags = (sram->flags&~0x03);
   __buildchecksum((u16*)sramcntrl.srambuf,&sram->checksum,&sram->checksum_inv);
  }
  if(loc<sramcntrl.offset) sramcntrl.offset = loc;

  sramcntrl.sync = __sram_write(sramcntrl.srambuf+sramcntrl.offset,sramcntrl.offset,(64-sramcntrl.offset));
  if(sramcntrl.sync) sramcntrl.offset = 64;
 }
 sramcntrl.locked = 0;
 _CPU_ISR_Restore(sramcntrl.enabled);
 return sramcntrl.sync;
}
