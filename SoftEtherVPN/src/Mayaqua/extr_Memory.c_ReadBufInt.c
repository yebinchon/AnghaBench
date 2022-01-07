
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int Endian32 (int ) ;
 int ReadBuf (int *,int *,int) ;

UINT ReadBufInt(BUF *b)
{
 UINT value;

 if (b == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &value, sizeof(UINT)) != sizeof(UINT))
 {
  return 0;
 }
 return Endian32(value);
}
