
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int BUF ;


 int ReadBuf (int *,int *,int) ;

UCHAR GetNextByte(BUF *b)
{
 UCHAR c = 0;

 if (b == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &c, 1) != 1)
 {
  return 0;
 }

 return c;
}
