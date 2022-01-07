
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DBG_FUNC_START ;
 int KDBG_CODE_OFFSET ;
 int kdebug_signpost_internal (int,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;

int
kdebug_signpost_start(uint32_t code, uintptr_t arg1, uintptr_t arg2, uintptr_t arg3, uintptr_t arg4)
{
 return kdebug_signpost_internal((code << KDBG_CODE_OFFSET) | DBG_FUNC_START, arg1, arg2, arg3, arg4);
}
