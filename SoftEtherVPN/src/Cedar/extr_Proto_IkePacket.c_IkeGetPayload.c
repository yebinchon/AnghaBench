
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ PayloadType; } ;
typedef int LIST ;
typedef TYPE_1__ IKE_PACKET_PAYLOAD ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

IKE_PACKET_PAYLOAD *IkeGetPayload(LIST *o, UINT payload_type, UINT index)
{
 UINT i, num;
 IKE_PACKET_PAYLOAD *ret = ((void*)0);

 if (o == ((void*)0))
 {
  return 0;
 }

 num = 0;

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IKE_PACKET_PAYLOAD *p = LIST_DATA(o, i);

  if (p->PayloadType == payload_type)
  {
   if (num == index)
   {
    ret = p;
    break;
   }

   num++;
  }
 }

 return ret;
}
