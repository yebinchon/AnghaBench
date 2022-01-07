
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Data; } ;
struct TYPE_7__ {TYPE_1__ GeneralData; } ;
struct TYPE_8__ {TYPE_2__ Payload; } ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 TYPE_3__* IkeNewPayload (int ) ;
 int MemToBuf (void*,int ) ;

IKE_PACKET_PAYLOAD *IkeNewDataPayload(UCHAR payload_type, void *data, UINT size)
{
 IKE_PACKET_PAYLOAD *p;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 p = IkeNewPayload(payload_type);
 p->Payload.GeneralData.Data = MemToBuf(data, size);

 return p;
}
