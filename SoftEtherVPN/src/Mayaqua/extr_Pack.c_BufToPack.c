
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int BUF ;


 int FreePack (int *) ;
 int * NewPack () ;
 int ReadPack (int *,int *) ;

PACK *BufToPack(BUF *b)
{
 PACK *p;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 if (ReadPack(b, p) == 0)
 {
  FreePack(p);
  return ((void*)0);
 }

 return p;
}
