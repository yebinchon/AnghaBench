
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PPP_SESSION ;


 int PPPRecvResponsePacket (int *,int *,int ,int *,int,int) ;

USHORT PPPContinueCurrentProtocolRequestListening(PPP_SESSION *p, USHORT protocol)
{
 USHORT received_protocol = 0;

 if (p == ((void*)0))
 {
  return 0;
 }

 PPPRecvResponsePacket(p, ((void*)0), protocol, &received_protocol, 0, 0);

 return received_protocol;
}
