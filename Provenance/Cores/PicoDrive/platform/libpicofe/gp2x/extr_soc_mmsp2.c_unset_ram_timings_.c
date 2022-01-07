
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;
 int* memtimex_old ;
 int printf (char*) ;

__attribute__((used)) static void unset_ram_timings_(void)
{
 memregs[0x3802>>1] = memtimex_old[0];
 memregs[0x3804>>1] = memtimex_old[1] | 0x8000;
 printf("RAM timings reset to startup values.\n");
}
