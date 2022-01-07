
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int PPC_ALIGNMENT ;
 scalar_t__ ROUND32UP (scalar_t__) ;
 scalar_t__ SYS_GetArenaLo () ;
 int SYS_SetArenaLo (void*) ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__ __lwp_heap_init (int *,void*,scalar_t__,int ) ;
 int __wkspace_heap ;
 int __wkspace_heap_size ;
 int memset (void*,int ,scalar_t__) ;

void __lwp_wkspace_init(u32 size)
{
 u32 arLo,level,dsize;


 _CPU_ISR_Disable(level);
 arLo = ROUND32UP(SYS_GetArenaLo());
 dsize = (size - (arLo - (u32)SYS_GetArenaLo()));
 SYS_SetArenaLo((void*)(arLo+dsize));
 _CPU_ISR_Restore(level);

 memset((void*)arLo,0,dsize);
 __wkspace_heap_size += __lwp_heap_init(&__wkspace_heap,(void*)arLo,dsize,PPC_ALIGNMENT);
}
