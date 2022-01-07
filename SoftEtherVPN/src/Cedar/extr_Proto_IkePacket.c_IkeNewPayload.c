
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int PayloadType; } ;
typedef TYPE_1__ IKE_PACKET_PAYLOAD ;


 TYPE_1__* ZeroMalloc (int) ;

IKE_PACKET_PAYLOAD *IkeNewPayload(UINT payload_type)
{
 IKE_PACKET_PAYLOAD *p;

 p = ZeroMalloc(sizeof(IKE_PACKET_PAYLOAD));

 p->PayloadType = payload_type;

 return p;
}
