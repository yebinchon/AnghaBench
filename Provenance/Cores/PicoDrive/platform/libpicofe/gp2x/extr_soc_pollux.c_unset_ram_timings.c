
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;
 int printf (char*) ;
 int* saved_memtimex ;

__attribute__((used)) static void unset_ram_timings(void)
{
 int i;

 memregs[0x14802>>1] = saved_memtimex[0];
 memregs[0x14804>>1] = saved_memtimex[1] | 0x8000;

 for (i = 0; i < 0x100000; i++)
  if (!(memregs[0x14804>>1] & 0x8000))
   break;

 printf("RAM timings reset to startup values.\n");
}
