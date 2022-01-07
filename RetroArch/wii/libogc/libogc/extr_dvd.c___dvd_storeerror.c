
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int dvderr_code; } ;
typedef TYPE_1__ syssramex ;


 TYPE_1__* __SYS_LockSramEx () ;
 int __SYS_UnlockSramEx (int) ;
 int convert (int ) ;

__attribute__((used)) static void __dvd_storeerror(u32 errorcode)
{
 u8 err;
 syssramex *ptr;

 err = convert(errorcode);
 ptr = __SYS_LockSramEx();
 ptr->dvderr_code = err;
 __SYS_UnlockSramEx(1);
}
