
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* UCHAR ;
struct TYPE_6__ {int * ValueList; void* TransformId; void* Number; } ;
struct TYPE_7__ {TYPE_1__ Transform; } ;
struct TYPE_8__ {TYPE_2__ Payload; } ;
typedef int LIST ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_TRANSFORM ;
 TYPE_3__* IkeNewPayload (int ) ;

IKE_PACKET_PAYLOAD *IkeNewTransformPayload(UCHAR number, UCHAR transform_id, LIST *value_list)
{
 IKE_PACKET_PAYLOAD *p;
 if (value_list == ((void*)0))
 {
  return ((void*)0);
 }

 p = IkeNewPayload(IKE_PAYLOAD_TRANSFORM);
 p->Payload.Transform.Number = number;
 p->Payload.Transform.TransformId = transform_id;
 p->Payload.Transform.ValueList = value_list;

 return p;
}
