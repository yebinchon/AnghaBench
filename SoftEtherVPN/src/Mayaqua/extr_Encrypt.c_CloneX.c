
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int BUF ;


 int * BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int * XToBuf (int *,int) ;

X *CloneX(X *x)
{
 BUF *b;
 X *ret;

 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 b = XToBuf(x, 0);
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 ret = BufToX(b, 0);
 FreeBuf(b);

 return ret;
}
