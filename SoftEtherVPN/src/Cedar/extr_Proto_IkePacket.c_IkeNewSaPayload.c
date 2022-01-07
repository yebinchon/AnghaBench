
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * PayloadList; } ;
struct TYPE_7__ {TYPE_1__ Sa; } ;
struct TYPE_8__ {TYPE_2__ Payload; } ;
typedef int LIST ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_SA ;
 TYPE_3__* IkeNewPayload (int ) ;

IKE_PACKET_PAYLOAD *IkeNewSaPayload(LIST *payload_list)
{
 IKE_PACKET_PAYLOAD *p;

 if (payload_list == ((void*)0))
 {
  return ((void*)0);
 }

 p = IkeNewPayload(IKE_PAYLOAD_SA);
 p->Payload.Sa.PayloadList = payload_list;

 return p;
}
