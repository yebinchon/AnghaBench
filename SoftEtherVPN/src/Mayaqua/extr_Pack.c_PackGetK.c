
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int K ;
typedef int BUF ;


 int * BufToK (int *,int,int,int *) ;
 int FreeBuf (int *) ;
 int * PackGetBuf (int *,char*) ;

K *PackGetK(PACK *p, char *name)
{
 K *k;
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

 k = BufToK(b, 1, 0, ((void*)0));

 if (k == ((void*)0))
 {
  k = BufToK(b, 1, 1, ((void*)0));
 }

 FreeBuf(b);

 return k;
}
