
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int ClientLCPOptionDetermined; } ;
typedef TYPE_1__ PPP_SESSION ;


 int PPPRecvResponsePacket (TYPE_1__*,int *,int ,int *,int,int) ;
 int PPP_PROTOCOL_LCP ;

bool PPPContinueUntilFinishAllLCPOptionRequestsDetermined(PPP_SESSION *p)
{
 USHORT received_protocol = 0;

 if (p == ((void*)0))
 {
  return 0;
 }

 PPPRecvResponsePacket(p, ((void*)0), PPP_PROTOCOL_LCP, &received_protocol, 1, 0);

 return p->ClientLCPOptionDetermined;
}
