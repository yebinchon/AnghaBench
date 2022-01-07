
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_2__ {int TickLock; int Tick; } ;


 int Lock (int ) ;
 int Unlock (int ) ;
 int Win32FastTick64 () ;
 TYPE_1__* tk64 ;

UINT64 Tick64()
{



 UINT64 tick64;
 if (tk64 == ((void*)0))
 {
  return 0;
 }
 Lock(tk64->TickLock);
 {
  tick64 = tk64->Tick;
 }
 Unlock(tk64->TickLock);
 return tick64;

}
