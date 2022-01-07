
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __sram_sync () ;

u32 __SYS_SyncSram()
{
 return __sram_sync();
}
