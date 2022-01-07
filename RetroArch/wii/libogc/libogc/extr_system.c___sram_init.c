
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; int srambuf; int sync; scalar_t__ locked; scalar_t__ enabled; } ;


 int __sram_read (int ) ;
 TYPE_1__ sramcntrl ;

void __sram_init()
{
 sramcntrl.enabled = 0;
 sramcntrl.locked = 0;
 sramcntrl.sync = __sram_read(sramcntrl.srambuf);

 sramcntrl.offset = 64;
}
