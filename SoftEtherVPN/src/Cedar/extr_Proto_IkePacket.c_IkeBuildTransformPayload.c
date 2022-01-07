
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h ;
struct TYPE_7__ {int ValueList; int TransformId; int Number; } ;
struct TYPE_6__ {int TransformId; int Number; } ;
typedef TYPE_1__ IKE_TRANSFORM_HEADER ;
typedef TYPE_2__ IKE_PACKET_TRANSFORM_PAYLOAD ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * IkeBuildTransformValueList (int ) ;
 int * NewBuf () ;
 int WriteBuf (int *,TYPE_1__*,int) ;
 int WriteBufBuf (int *,int *) ;
 int Zero (TYPE_1__*,int) ;

BUF *IkeBuildTransformPayload(IKE_PACKET_TRANSFORM_PAYLOAD *t)
{
 IKE_TRANSFORM_HEADER h;
 BUF *ret, *b;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.Number = t->Number;
 h.TransformId = t->TransformId;

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));

 b = IkeBuildTransformValueList(t->ValueList);
 WriteBufBuf(ret, b);

 FreeBuf(b);

 return ret;
}
