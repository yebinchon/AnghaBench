
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_6__ {scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_5__ {scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_7__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
typedef TYPE_3__ TRAFFIC ;



UINT64 GetTrafficPacketSize(TRAFFIC *t)
{

 if (t == ((void*)0))
 {
  return 0;
 }

 return t->Recv.BroadcastBytes + t->Recv.UnicastBytes +
  t->Send.BroadcastBytes + t->Send.UnicastBytes;
}
