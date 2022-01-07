
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int K ;
typedef int ELEMENT ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * KToBuf (int *,int,int *) ;
 int * PackAddBuf (int *,char*,int *) ;

ELEMENT *PackAddK(PACK *p, char *name, K *k)
{
 BUF *b;
 ELEMENT *e = ((void*)0);

 if (p == ((void*)0) || name == ((void*)0) || k == ((void*)0))
 {
  return ((void*)0);
 }

 b = KToBuf(k, 0, ((void*)0));
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 e = PackAddBuf(p, name, b);
 FreeBuf(b);

 return e;
}
