
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int IKE_PACKET_TRANSFORM_VALUE ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * IkeBuildTransformValue (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewBuf () ;
 int WriteBufBuf (int *,int *) ;

BUF *IkeBuildTransformValueList(LIST *o)
{
 BUF *b;
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IKE_PACKET_TRANSFORM_VALUE *v = LIST_DATA(o, i);
  BUF *tmp = IkeBuildTransformValue(v);

  WriteBufBuf(b, tmp);

  FreeBuf(tmp);
 }

 return b;
}
