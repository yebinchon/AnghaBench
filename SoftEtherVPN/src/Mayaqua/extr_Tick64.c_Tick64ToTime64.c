
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_5__ {int AdjustTime; } ;
struct TYPE_4__ {scalar_t__ Tick; scalar_t__ Time; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ ADJUST_TIME ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;
 TYPE_2__* tk64 ;

UINT64 Tick64ToTime64(UINT64 tick)
{
 UINT64 ret = 0;
 if (tick == 0)
 {
  return 0;
 }
 LockList(tk64->AdjustTime);
 {
  INT i;
  for (i = ((INT)LIST_NUM(tk64->AdjustTime) - 1); i >= 0; i--)
  {
   ADJUST_TIME *t = LIST_DATA(tk64->AdjustTime, i);
   if (t->Tick <= tick)
   {
    ret = t->Time + (tick - t->Tick);
    break;
   }
  }
 }
 UnlockList(tk64->AdjustTime);
 if (ret == 0)
 {
  ret++;
 }
 return ret;
}
