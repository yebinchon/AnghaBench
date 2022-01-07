
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;
typedef int RPC ;
typedef int PACK ;
typedef int NAT ;


 int FreePack (int *) ;
 int HttpServerSend (int *,int *) ;
 int * NewPack () ;
 int NiRpcServer ;
 int RpcFree (int *) ;
 int RpcServer (int *) ;
 int * StartRpcServer (int *,int ,int *) ;

void NiAdminMain(NAT *n, SOCK *s)
{
 RPC *r;
 PACK *p;

 if (n == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 p = NewPack();
 HttpServerSend(s, p);
 FreePack(p);

 r = StartRpcServer(s, NiRpcServer, n);

 RpcServer(r);

 RpcFree(r);
}
