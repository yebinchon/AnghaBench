
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_6__ {scalar_t__ DelayedForwardTick; } ;
struct TYPE_5__ {int DelayedPacketList; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ PKT ;


 TYPE_2__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 int MIN (int,int) ;
 scalar_t__ TickHighres64 () ;
 int UnlockList (int ) ;

UINT GetNextDelayedPacketTickDiff(SESSION *s)
{
 UINT i;
 UINT ret = 0x7fffffff;
 UINT64 now;

 if (s == ((void*)0))
 {
  return 0;
 }

 if (LIST_NUM(s->DelayedPacketList) >= 1)
 {
  now = TickHighres64();

  LockList(s->DelayedPacketList);
  {
   for (i = 0;i < LIST_NUM(s->DelayedPacketList);i++)
   {
    PKT *p = LIST_DATA(s->DelayedPacketList, i);
    UINT64 t = p->DelayedForwardTick;
    UINT d = 0x7fffffff;

    if (now >= t)
    {
     d = 0;
    }
    else
    {
     d = (UINT)(t - now);
    }

    ret = MIN(ret, d);
   }
  }
  UnlockList(s->DelayedPacketList);
 }

 return ret;
}
