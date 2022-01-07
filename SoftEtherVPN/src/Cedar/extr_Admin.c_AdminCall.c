
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC ;
typedef int PACK ;


 int * NewPack () ;
 int * RpcCall (int *,char*,int *) ;

PACK *AdminCall(RPC *rpc, char *function_name, PACK *p)
{

 if (rpc == ((void*)0) || function_name == ((void*)0))
 {
  return ((void*)0);
 }
 if (p == ((void*)0))
 {
  p = NewPack();
 }



 return RpcCall(rpc, function_name, p);
}
