
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_2__ {int PayloadType; } ;
typedef int LIST ;
typedef TYPE_1__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_NONE ;
 scalar_t__ LIST_DATA (int *,int ) ;
 scalar_t__ LIST_NUM (int *) ;

UCHAR IkeGetFirstPayloadType(LIST *o)
{
 IKE_PACKET_PAYLOAD *p;

 if (o == ((void*)0))
 {
  return IKE_PAYLOAD_NONE;
 }

 if (LIST_NUM(o) == 0)
 {
  return IKE_PAYLOAD_NONE;
 }

 p = (IKE_PACKET_PAYLOAD *)LIST_DATA(o, 0);

 return p->PayloadType;
}
