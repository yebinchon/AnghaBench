
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PPP_SESSION ;
typedef int PPP_PACKET ;


 int PPPSendPacketEx (int *,int *,int) ;

bool PPPSendPacket(PPP_SESSION *p, PPP_PACKET *pp)
{
 return PPPSendPacketEx(p, pp, 0);
}
