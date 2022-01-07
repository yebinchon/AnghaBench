
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Lock; int * Sock; scalar_t__ IsVpnServer; } ;
typedef TYPE_1__ RPC ;
typedef int PACK ;


 int AdminReconnect (TYPE_1__*) ;
 int ERR_DISCONNECTED ;
 int ERR_NO_ERROR ;
 int FreePack (int *) ;
 int Lock (int ) ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int) ;
 int PackAddStr (int *,char*,char*) ;
 int * PackError (int) ;
 int * RpcCallInternal (TYPE_1__*,int *) ;
 int Unlock (int ) ;

PACK *RpcCall(RPC *r, char *function_name, PACK *p)
{
 PACK *ret;
 UINT num_retry = 0;
 UINT err = 0;

 if (r == ((void*)0) || function_name == ((void*)0))
 {
  return ((void*)0);
 }



 Lock(r->Lock);
 {
  if (p == ((void*)0))
  {
   p = NewPack();
  }

  PackAddStr(p, "function_name", function_name);

RETRY:
  err = 0;
  ret = RpcCallInternal(r, p);

  if (ret == ((void*)0))
  {
   if (r->IsVpnServer && r->Sock != ((void*)0))
   {
    if (num_retry < 1)
    {
     num_retry++;


     err = AdminReconnect(r);

     if (err == ERR_NO_ERROR)
     {
      goto RETRY;
     }
    }
   }
  }

  FreePack(p);

  if (ret == ((void*)0))
  {
   if (err == 0)
   {
    err = ERR_DISCONNECTED;
   }

   ret = PackError(err);
   PackAddInt(ret, "error_code", err);
  }
 }
 Unlock(r->Lock);

 return ret;
}
