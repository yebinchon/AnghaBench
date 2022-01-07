
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cert; int Pack; } ;
typedef TYPE_1__ WPC_PACKET ;


 int FreePack (int ) ;
 int FreeX (int ) ;

void WpcFreePacket(WPC_PACKET *packet)
{

 if (packet == ((void*)0))
 {
  return;
 }

 FreePack(packet->Pack);
 FreeX(packet->Cert);
}
