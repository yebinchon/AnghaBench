
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int LSR; int IIR; } ;
struct TYPE_4__ {scalar_t__ outbuffersize; TYPE_1__ reg; } ;


 TYPE_2__* NetlinkArea ;
 int ScuSendExternalInterrupt12 () ;

void NetlinkUpdateReceivedDataInt()
{
   if (NetlinkArea->outbuffersize > 0)
   {

      NetlinkArea->reg.LSR |= 0x01;


      NetlinkArea->reg.IIR = 0x4;
      ScuSendExternalInterrupt12();
  }
}
