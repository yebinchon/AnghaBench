
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* issuer_x; int * x; } ;
typedef TYPE_1__ RPC_GET_ISSUER ;
typedef int PACK ;
typedef int BUF ;


 void* BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int FreeX (int *) ;
 int * PackGetBuf (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcGetIssuer(RPC_GET_ISSUER *c, PACK *p)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(RPC_GET_ISSUER));
 b = PackGetBuf(p, "x");
 if (b != ((void*)0))
 {
  if (c->x != ((void*)0))
  {
   FreeX(c->x);
  }
  c->x = BufToX(b, 0);
  FreeBuf(b);
 }

 b = PackGetBuf(p, "issuer_x");
 if (b != ((void*)0))
 {
  c->issuer_x = BufToX(b, 0);
  FreeBuf(b);
 }
}
