
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int syssram ;


 int __unlocksram (int ,int) ;

u32 __SYS_UnlockSramEx(u32 write)
{
 return __unlocksram(write,sizeof(syssram));
}
