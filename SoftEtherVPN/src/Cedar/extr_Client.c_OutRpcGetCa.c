
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * x; int Key; } ;
typedef TYPE_1__ RPC_GET_CA ;
typedef int PACK ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int PackAddBuf (int *,char*,int *) ;
 int PackAddInt (int *,char*,int ) ;
 int * XToBuf (int *,int) ;

void OutRpcGetCa(PACK *p, RPC_GET_CA *c)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "Key", c->Key);

 if (c->x != ((void*)0))
 {
  BUF *b = XToBuf(c->x, 0);

  PackAddBuf(p, "x", b);

  FreeBuf(b);
 }
}
