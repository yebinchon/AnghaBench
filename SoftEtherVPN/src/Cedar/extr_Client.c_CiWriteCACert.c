
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int FOLDER ;
typedef int CLIENT ;
typedef int BUF ;


 int CfgAddBuf (int *,char*,int *) ;
 int FreeBuf (int *) ;
 int * XToBuf (int *,int) ;

void CiWriteCACert(CLIENT *c, FOLDER *f, X *x)
{
 BUF *b;

 if (c == ((void*)0) || f == ((void*)0) || x == ((void*)0))
 {
  return;
 }

 b = XToBuf(x, 0);
 CfgAddBuf(f, "X509", b);
 FreeBuf(b);
}
