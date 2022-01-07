
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int PACK ;
typedef int BUF ;


 int * BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int * PackGetBuf (int *,char*) ;

X *PackGetX(PACK *p, char *name)
{
 X *x;
 BUF *b;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 b = PackGetBuf(p, name);
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 x = BufToX(b, 0);

 if (x == ((void*)0))
 {
  x = BufToX(b, 1);
 }

 FreeBuf(b);

 return x;
}
