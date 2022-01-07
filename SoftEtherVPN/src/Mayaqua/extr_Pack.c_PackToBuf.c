
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int BUF ;


 int * NewBuf () ;
 int WritePack (int *,int *) ;

BUF *PackToBuf(PACK *p)
{
 BUF *b;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 WritePack(b, p);

 return b;
}
