
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int Endian32 (int ) ;
 int WriteBuf (int *,int *,int) ;

bool WriteBufInt(BUF *b, UINT value)
{

 if (b == ((void*)0))
 {
  return 0;
 }

 value = Endian32(value);

 WriteBuf(b, &value, sizeof(UINT));
 return 1;
}
