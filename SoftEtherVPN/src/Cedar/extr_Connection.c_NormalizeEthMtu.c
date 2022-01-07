
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ LastChangeMtuError; int Name; int Eth; } ;
struct TYPE_7__ {TYPE_1__* Session; } ;
struct TYPE_6__ {int Name; int Hub; } ;
typedef TYPE_2__ CONNECTION ;
typedef TYPE_3__ BRIDGE ;


 scalar_t__ EthGetMtu (int ) ;
 scalar_t__ EthIsChangeMtuSupported (int ) ;
 int EthSetMtu (int ,scalar_t__) ;
 int HLog (int ,char*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ Tick64 () ;

void NormalizeEthMtu(BRIDGE *b, CONNECTION *c, UINT packet_size)
{

 if (packet_size == 0 || b == ((void*)0) || c == ((void*)0))
 {
  return;
 }


 if (EthIsChangeMtuSupported(b->Eth))
 {
  UINT currentMtu = EthGetMtu(b->Eth);
  if (currentMtu != 0)
  {
   if (packet_size > currentMtu)
   {
    bool ok = EthSetMtu(b->Eth, packet_size);

    if (ok)
    {
     HLog(c->Session->Hub, "LH_SET_MTU", c->Session->Name,
      b->Name, currentMtu, packet_size, packet_size);
    }
    else
    {
     UINT64 now = Tick64();

     if (b->LastChangeMtuError == 0 ||
      now >= (b->LastChangeMtuError + 60000ULL))
     {
      HLog(c->Session->Hub, "LH_SET_MTU_ERROR", c->Session->Name,
       b->Name, currentMtu, packet_size, packet_size);

      b->LastChangeMtuError = now;
     }
    }
   }
  }
 }
}
