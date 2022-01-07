
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int offset; scalar_t__ sync; scalar_t__ srambuf; } ;


 scalar_t__ __sram_write (scalar_t__,int,int) ;
 TYPE_1__ sramcntrl ;

__attribute__((used)) static s32 __sram_writecallback(s32 chn,s32 dev)
{
 sramcntrl.sync = __sram_write(sramcntrl.srambuf+sramcntrl.offset,sramcntrl.offset,(64-sramcntrl.offset));
 if(sramcntrl.sync) sramcntrl.offset = 64;

 return 1;
}
