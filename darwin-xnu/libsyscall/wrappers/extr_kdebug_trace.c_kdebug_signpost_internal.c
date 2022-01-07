
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APPSDBG_CODE (int ,int ) ;
 int DBG_APP_SIGNPOST ;
 int EINVAL ;
 scalar_t__ KDBG_EXTRACT_CSC (int ) ;
 int errno ;
 int kdebug_trace (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;

__attribute__((used)) static int
kdebug_signpost_internal(uint32_t debugid, uintptr_t arg1, uintptr_t arg2, uintptr_t arg3, uintptr_t arg4)
{
 if (KDBG_EXTRACT_CSC(debugid) != 0) {
  errno = EINVAL;
  return -1;
 }

 debugid |= APPSDBG_CODE(DBG_APP_SIGNPOST, 0);

 return kdebug_trace(debugid, arg1, arg2, arg3, arg4);
}
