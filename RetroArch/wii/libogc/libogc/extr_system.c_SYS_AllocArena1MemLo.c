
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SYS_GetArena1Lo () ;
 int SYS_SetArena1Lo (void*) ;

void* SYS_AllocArena1MemLo(u32 size,u32 align)
{
 u32 mem1lo;
 void *ptr = ((void*)0);

 mem1lo = (u32)SYS_GetArena1Lo();
 ptr = (void*)((mem1lo+(align-1))&~(align-1));
 mem1lo = ((((u32)ptr+size+align)-1)&~(align-1));
 SYS_SetArena1Lo((void*)mem1lo);

 return ptr;
}
