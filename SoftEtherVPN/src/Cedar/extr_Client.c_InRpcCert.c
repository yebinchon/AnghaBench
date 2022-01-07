
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; } ;
typedef TYPE_1__ RPC_CERT ;
typedef int PACK ;
typedef int BUF ;


 int BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int * PackGetBuf (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcCert(RPC_CERT *c, PACK *p)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(RPC_CERT));
 b = PackGetBuf(p, "x");
 if (b == ((void*)0))
 {
  return;
 }

 c->x = BufToX(b, 0);
 FreeBuf(b);
}
