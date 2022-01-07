
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int BUF ;


 int Endian16 (int ) ;
 int WriteBuf (int *,int *,int) ;

bool WriteBufShort(BUF *b, USHORT value)
{

 if (b == ((void*)0))
 {
  return 0;
 }

 value = Endian16(value);

 WriteBuf(b, &value, sizeof(USHORT));
 return 1;
}
