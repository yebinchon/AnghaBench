
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_6__ {int IpAddress; } ;
struct TYPE_7__ {TYPE_1__ NatOa; } ;
struct TYPE_8__ {int PayloadType; TYPE_2__ Payload; } ;
typedef int IP ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int Copy (int *,int *,int) ;
 TYPE_3__* IkeNewPayload (int ) ;

IKE_PACKET_PAYLOAD *IkeNewNatOaPayload(UCHAR payload_type, IP *ip)
{
 IKE_PACKET_PAYLOAD *p;

 if (ip == ((void*)0))
 {
  return ((void*)0);
 }

 p = IkeNewPayload(payload_type);
 Copy(&p->Payload.NatOa.IpAddress, ip, sizeof(IP));
 p->PayloadType = payload_type;

 return p;
}
