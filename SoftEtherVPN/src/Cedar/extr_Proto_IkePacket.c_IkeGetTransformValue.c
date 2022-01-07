
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int ValueList; } ;
struct TYPE_5__ {scalar_t__ Type; scalar_t__ Value; } ;
typedef TYPE_1__ IKE_PACKET_TRANSFORM_VALUE ;
typedef TYPE_2__ IKE_PACKET_TRANSFORM_PAYLOAD ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT IkeGetTransformValue(IKE_PACKET_TRANSFORM_PAYLOAD *t, UINT type, UINT index)
{
 UINT i;
 UINT num;

 if (t == ((void*)0))
 {
  return 0;
 }

 num = 0;

 for (i = 0;i < LIST_NUM(t->ValueList);i++)
 {
  IKE_PACKET_TRANSFORM_VALUE *v = LIST_DATA(t->ValueList, i);

  if (v->Type == type)
  {
   if (num == index)
   {
    return v->Value;
   }

   num++;
  }
 }

 return 0;
}
