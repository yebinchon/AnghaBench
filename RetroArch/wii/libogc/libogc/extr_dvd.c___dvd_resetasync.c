
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dvdcbcallback ;
struct TYPE_2__ {int * cb; } ;


 int DVD_CancelAllAsync (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __dvd_cancelcallback ;
 scalar_t__ __dvd_canceling ;
 int __dvd_clearwaitingqueue () ;
 TYPE_1__* __dvd_executing ;

void __dvd_resetasync(dvdcbcallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __dvd_clearwaitingqueue();
 if(__dvd_canceling) __dvd_cancelcallback = cb;
 else {
  if(__dvd_executing) __dvd_executing->cb = ((void*)0);
  DVD_CancelAllAsync(cb);
 }
 _CPU_ISR_Restore(level);
}
