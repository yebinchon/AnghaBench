
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_SYS_CALL ;
 int __exception_load (int ,scalar_t__,scalar_t__,int *) ;
 scalar_t__ systemcallhandler_end ;
 scalar_t__ systemcallhandler_start ;

void __systemcall_init()
{
 __exception_load(EX_SYS_CALL,systemcallhandler_start,(systemcallhandler_end-systemcallhandler_start),((void*)0));
}
