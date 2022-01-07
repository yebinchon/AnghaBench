
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_6__ {scalar_t__ PacketSize; } ;
struct TYPE_5__ {scalar_t__ LastTime; scalar_t__ Value; } ;
typedef TYPE_1__ TRAFFIC_LIMITER ;
typedef TYPE_2__ PKT ;


 scalar_t__ LIMITER_SAMPLING_SPAN ;
 scalar_t__ Tick64 () ;

void IntoTrafficLimiter(TRAFFIC_LIMITER *tr, PKT *p)
{
 UINT64 now = Tick64();

 if (tr == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (tr->LastTime == 0 || tr->LastTime > now ||
  (tr->LastTime + LIMITER_SAMPLING_SPAN) < now)
 {

  tr->Value = 0;
  tr->LastTime = now;
 }


 tr->Value += p->PacketSize * (UINT64)8;
}
