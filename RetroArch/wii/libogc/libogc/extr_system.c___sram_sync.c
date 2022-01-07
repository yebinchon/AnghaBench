
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int sync; } ;


 TYPE_1__ sramcntrl ;

__attribute__((used)) static s32 __sram_sync()
{
 return sramcntrl.sync;
}
