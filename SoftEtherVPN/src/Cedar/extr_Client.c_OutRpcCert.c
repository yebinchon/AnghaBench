
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ RPC_CERT ;
typedef int PACK ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int PackAddBuf (int *,char*,int *) ;
 int * XToBuf (int *,int) ;

void OutRpcCert(PACK *p, RPC_CERT *c)
{
 BUF *b;

 if (p == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 if (c->x != ((void*)0))
 {
  b = XToBuf(c->x, 0);

  PackAddBuf(p, "x", b);

  FreeBuf(b);
 }
}
