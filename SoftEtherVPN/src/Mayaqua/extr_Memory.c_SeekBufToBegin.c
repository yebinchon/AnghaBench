
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 int SeekBuf (int *,int ,int ) ;

void SeekBufToBegin(BUF *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 SeekBuf(b, 0, 0);
}
