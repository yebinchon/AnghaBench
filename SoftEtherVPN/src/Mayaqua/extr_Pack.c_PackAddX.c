
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int PACK ;
typedef int ELEMENT ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * PackAddBuf (int *,char*,int *) ;
 int * XToBuf (int *,int) ;

ELEMENT *PackAddX(PACK *p, char *name, X *x)
{
 BUF *b;
 ELEMENT *e = ((void*)0);

 if (p == ((void*)0) || name == ((void*)0) || x == ((void*)0))
 {
  return ((void*)0);
 }

 b = XToBuf(x, 0);
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 e = PackAddBuf(p, name, b);
 FreeBuf(b);

 return e;
}
