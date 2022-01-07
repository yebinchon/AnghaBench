
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int __kdebug_trace64 (int ,int ,int ,int ,int ) ;
 int kdebug_is_enabled (int ) ;

int
kdebug_trace(uint32_t debugid, uint64_t arg1, uint64_t arg2, uint64_t arg3,
             uint64_t arg4)
{
 if (!kdebug_is_enabled(debugid)) {
  return 0;
 }

 return __kdebug_trace64(debugid, arg1, arg2, arg3, arg4);
}
