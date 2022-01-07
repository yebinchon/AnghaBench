
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int BUF ;


 int Endian64 (int ) ;
 int WriteBuf (int *,int *,int) ;

bool WriteBufInt64(BUF *b, UINT64 value)
{

 if (b == ((void*)0))
 {
  return 0;
 }

 value = Endian64(value);

 WriteBuf(b, &value, sizeof(UINT64));
 return 1;
}
