
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ Size; int DestPort; int * Data; void* Type; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_8__ {int * Ike; int * L2TP; } ;
typedef int L2TP_SERVER ;
typedef TYPE_2__ IPSEC_SERVER ;
typedef int IKE_SERVER ;


 void* IKE_UDP_TYPE_ESP ;
 void* IKE_UDP_TYPE_ISAKMP ;




 scalar_t__ IsZero (int *,int) ;
 int ProcIKEPacketRecv (int *,TYPE_1__*) ;
 int ProcL2TPPacketRecv (int *,TYPE_1__*) ;
 scalar_t__ WFP_ESP_PACKET_TAG_1 ;
 scalar_t__ WFP_ESP_PACKET_TAG_2 ;

void IPsecProcPacket(IPSEC_SERVER *s, UDPPACKET *p)
{
 L2TP_SERVER *l2tp;
 IKE_SERVER *ike;
 void *old_data_ptr;
 UINT old_data_size;
 bool proc_this_packet = 1;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 old_data_ptr = p->Data;
 old_data_size = p->Size;

 l2tp = s->L2TP;
 ike = s->Ike;


 if (p->DestPort == 130)
 {
  if (p->Size >= 4 && IsZero(p->Data, 4))
  {

   p->Data = ((UCHAR *)p->Data) + 4;
   p->Size -= 4;

   p->Type = IKE_UDP_TYPE_ISAKMP;
  }
  else
  {
   p->Type = IKE_UDP_TYPE_ESP;
  }
 }
 else if (p->DestPort == 129)
 {
  if (p->Size >= 8 && IsZero(p->Data, 8))
  {

   p->Data = ((UCHAR *)p->Data) + 8;
   p->Size -= 8;

   p->Type = IKE_UDP_TYPE_ESP;
  }
  else
  {
   p->Type = IKE_UDP_TYPE_ISAKMP;
  }
 }
 else if (p->DestPort == 131)
 {

  p->Type = IKE_UDP_TYPE_ESP;
 }


 if (proc_this_packet)
 {
  switch (p->DestPort)
  {
  case 128:

   ProcL2TPPacketRecv(l2tp, p);
   break;

  case 129:
  case 130:
  case 131:

   ProcIKEPacketRecv(ike, p);
   break;
  }
 }

 p->Data = old_data_ptr;
 p->Size = old_data_size;
}
