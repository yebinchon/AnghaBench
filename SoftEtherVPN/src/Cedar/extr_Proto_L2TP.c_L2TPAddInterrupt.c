
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_3__ {int Interrupts; } ;
typedef TYPE_1__ L2TP_SERVER ;


 int AddInterrupt (int ,scalar_t__) ;

void L2TPAddInterrupt(L2TP_SERVER *l2tp, UINT64 next_tick)
{

 if (l2tp == ((void*)0) || next_tick == 0)
 {
  return;
 }

 AddInterrupt(l2tp->Interrupts, next_tick);
}
