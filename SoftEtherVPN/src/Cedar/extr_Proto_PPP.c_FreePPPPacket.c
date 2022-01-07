
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PPP_PACKET ;


 int FreePPPPacketEx (int *,int) ;

void FreePPPPacket(PPP_PACKET *pp)
{
 FreePPPPacketEx(pp, 0);
}
