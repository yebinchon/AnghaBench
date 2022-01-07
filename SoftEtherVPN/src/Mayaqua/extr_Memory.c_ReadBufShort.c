
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int BUF ;


 int Endian16 (int ) ;
 int ReadBuf (int *,int *,int) ;

USHORT ReadBufShort(BUF *b)
{
 USHORT value;

 if (b == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &value, sizeof(USHORT)) != sizeof(USHORT))
 {
  return 0;
 }
 return Endian16(value);
}
