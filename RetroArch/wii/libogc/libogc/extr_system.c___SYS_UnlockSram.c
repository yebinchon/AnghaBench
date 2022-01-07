
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __unlocksram (int ,int ) ;

u32 __SYS_UnlockSram(u32 write)
{
 return __unlocksram(write,0);
}
