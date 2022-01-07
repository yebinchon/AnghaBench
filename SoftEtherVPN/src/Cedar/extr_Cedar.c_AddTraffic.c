
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_6__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_8__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
typedef TYPE_3__ TRAFFIC ;



void AddTraffic(TRAFFIC *dst, TRAFFIC *diff)
{

 if (dst == ((void*)0) || diff == ((void*)0))
 {
  return;
 }

 dst->Recv.BroadcastBytes += diff->Recv.BroadcastBytes;
 dst->Recv.BroadcastCount += diff->Recv.BroadcastCount;
 dst->Recv.UnicastBytes += diff->Recv.UnicastBytes;
 dst->Recv.UnicastCount += diff->Recv.UnicastCount;

 dst->Send.BroadcastBytes += diff->Send.BroadcastBytes;
 dst->Send.BroadcastCount += diff->Send.BroadcastCount;
 dst->Send.UnicastBytes += diff->Send.UnicastBytes;
 dst->Send.UnicastCount += diff->Send.UnicastCount;
}
