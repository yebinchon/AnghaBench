
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type ;
typedef int size_or_value ;
typedef int af_bit ;
typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int Type; int Value; } ;
typedef TYPE_1__ IKE_PACKET_TRANSFORM_VALUE ;
typedef int BUF ;


 int Endian16 (int) ;
 int Endian32 (int) ;
 int * NewBuf () ;
 int WriteBuf (int *,int*,int) ;

BUF *IkeBuildTransformValue(IKE_PACKET_TRANSFORM_VALUE *v)
{
 BUF *b;
 UCHAR af_bit, type;
 USHORT size_or_value;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 type = v->Type;

 if (v->Value >= 65536)
 {

  af_bit = 0;
  size_or_value = Endian16(sizeof(UINT));
 }
 else
 {

  af_bit = 0x80;
  size_or_value = Endian16((USHORT)v->Value);
 }

 b = NewBuf();
 WriteBuf(b, &af_bit, sizeof(af_bit));
 WriteBuf(b, &type, sizeof(type));
 WriteBuf(b, &size_or_value, sizeof(size_or_value));

 if (af_bit == 0)
 {
  UINT value = Endian32(v->Value);
  WriteBuf(b, &value, sizeof(UINT));
 }

 return b;
}
