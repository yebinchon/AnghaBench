
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ Type; } ;
typedef TYPE_1__ UDPPACKET ;
struct TYPE_17__ {int ExchangeType; } ;
typedef int IKE_SERVER ;
typedef TYPE_2__ IKE_PACKET ;






 scalar_t__ IKE_UDP_TYPE_ESP ;
 scalar_t__ IKE_UDP_TYPE_ISAKMP ;
 int IkeFree (TYPE_2__*) ;
 TYPE_2__* ParseIKEPacketHeader (TYPE_1__*) ;
 int ProcIPsecEspPacketRecv (int *,TYPE_1__*) ;
 int ProcIkeAggressiveModePacketRecv (int *,TYPE_1__*,TYPE_2__*) ;
 int ProcIkeInformationalExchangePacketRecv (int *,TYPE_1__*,TYPE_2__*) ;
 int ProcIkeMainModePacketRecv (int *,TYPE_1__*,TYPE_2__*) ;
 int ProcIkeQuickModePacketRecv (int *,TYPE_1__*,TYPE_2__*) ;

void ProcIKEPacketRecv(IKE_SERVER *ike, UDPPACKET *p)
{

 if (ike == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (p->Type == IKE_UDP_TYPE_ISAKMP)
 {

  IKE_PACKET *header;

  header = ParseIKEPacketHeader(p);
  if (header == ((void*)0))
  {
   return;
  }



  switch (header->ExchangeType)
  {
  case 129:
   ProcIkeMainModePacketRecv(ike, p, header);
   break;

  case 131:
   ProcIkeAggressiveModePacketRecv(ike, p, header);
   break;

  case 128:
   ProcIkeQuickModePacketRecv(ike, p, header);
   break;

  case 130:
   ProcIkeInformationalExchangePacketRecv(ike, p, header);
   break;
  }

  IkeFree(header);
 }
 else if (p->Type == IKE_UDP_TYPE_ESP)
 {

  ProcIPsecEspPacketRecv(ike, p);
 }
}
