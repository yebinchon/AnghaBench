
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int BUF ;


 int WriteBuf (int *,int *,int) ;

bool WriteBufChar(BUF *b, UCHAR uc)
{

 if (b == ((void*)0))
 {
  return 0;
 }

 WriteBuf(b, &uc, 1);

 return 1;
}
