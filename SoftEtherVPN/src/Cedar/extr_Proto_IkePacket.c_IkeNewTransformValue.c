
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int Value; int Type; } ;
typedef TYPE_1__ IKE_PACKET_TRANSFORM_VALUE ;


 TYPE_1__* ZeroMalloc (int) ;

IKE_PACKET_TRANSFORM_VALUE *IkeNewTransformValue(UCHAR type, UINT value)
{
 IKE_PACKET_TRANSFORM_VALUE *v = ZeroMalloc(sizeof(IKE_PACKET_TRANSFORM_VALUE));

 v->Type = type;
 v->Value = value;

 return v;
}
