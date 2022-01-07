
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int h ;
struct TYPE_6__ {int ValueList; int TransformId; int Number; } ;
struct TYPE_5__ {int TransformId; int Number; } ;
typedef TYPE_1__ IKE_TRANSFORM_HEADER ;
typedef TYPE_2__ IKE_PACKET_TRANSFORM_PAYLOAD ;
typedef int BUF ;


 int IkeParseTransformValueList (int *) ;
 int ReadBuf (int *,TYPE_1__*,int) ;

bool IkeParseTransformPayload(IKE_PACKET_TRANSFORM_PAYLOAD *t, BUF *b)
{
 IKE_TRANSFORM_HEADER h;

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &h, sizeof(h)) != sizeof(h))
 {
  return 0;
 }

 t->Number = h.Number;
 t->TransformId = h.TransformId;
 t->ValueList = IkeParseTransformValueList(b);

 return 1;
}
