
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int func_name ;
struct TYPE_4__ {int * (* Dispatch ) (TYPE_1__*,char*,int *) ;} ;
typedef TYPE_1__ RPC ;
typedef int PACK ;


 int MAX_SIZE ;
 int PackGetStr (int *,char*,char*,int) ;
 int * stub1 (TYPE_1__*,char*,int *) ;

PACK *CallRpcDispatcher(RPC *r, PACK *p)
{
 char func_name[MAX_SIZE];

 if (r == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 if (PackGetStr(p, "function_name", func_name, sizeof(func_name)) == 0)
 {
  return ((void*)0);
 }

 return r->Dispatch(r, func_name, p);
}
