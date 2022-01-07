
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_11__ {int Value; } ;
struct TYPE_13__ {TYPE_3__ UploadLimiter; } ;
struct TYPE_12__ {TYPE_1__* Policy; TYPE_2__* PacketAdapter; } ;
struct TYPE_10__ {scalar_t__ Param; } ;
struct TYPE_9__ {int MaxUpload; } ;
typedef TYPE_3__ TRAFFIC_LIMITER ;
typedef TYPE_4__ SESSION ;
typedef int PKT ;
typedef TYPE_5__ HUB_PA ;


 int IntoTrafficLimiter (TYPE_3__*,int *) ;
 scalar_t__ IsMostHighestPriorityPacket (TYPE_4__*,int *) ;
 scalar_t__ LIMITER_SAMPLING_SPAN ;

bool StorePacketFilterByTrafficLimiter(SESSION *s, PKT *p)
{
 HUB_PA *pa;
 TRAFFIC_LIMITER *tr;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 if (s->Policy->MaxUpload == 0)
 {

  return 1;
 }

 pa = (HUB_PA *)s->PacketAdapter->Param;
 tr = &pa->UploadLimiter;


 if (IsMostHighestPriorityPacket(s, p))
 {
  return 1;
 }


 IntoTrafficLimiter(tr, p);


 if ((tr->Value * (UINT64)1000 / (UINT64)LIMITER_SAMPLING_SPAN) > s->Policy->MaxUpload)
 {

  return 0;
 }

 return 1;
}
