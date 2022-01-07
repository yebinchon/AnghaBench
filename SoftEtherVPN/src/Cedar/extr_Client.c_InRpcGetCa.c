
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int Key; } ;
typedef TYPE_1__ RPC_GET_CA ;
typedef int PACK ;
typedef int BUF ;


 int BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int * PackGetBuf (int *,char*) ;
 int PackGetInt (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcGetCa(RPC_GET_CA *c, PACK *p)
{
 BUF *b;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(RPC_GET_CA));

 c->Key = PackGetInt(p, "Key");

 b = PackGetBuf(p, "x");
 if (b != ((void*)0))
 {
  c->x = BufToX(b, 0);

  FreeBuf(b);
 }
}
