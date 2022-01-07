
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int kernel_debug_internal (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,uintptr_t,int ) ;

void
kernel_debug1(
 uint32_t debugid,
 uintptr_t arg1,
 uintptr_t arg2,
 uintptr_t arg3,
 uintptr_t arg4,
 uintptr_t arg5)
{
 kernel_debug_internal(debugid, arg1, arg2, arg3, arg4, arg5, 0);
}
