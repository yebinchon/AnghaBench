
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Online; int lock; int Option; int * ClientAuth; int * ClientOption; int Cedar; int Virtual; } ;
typedef int RPC_DUMMY ;
typedef TYPE_1__ NAT ;


 int ERR_ACCOUNT_NOT_PRESENT ;
 int ERR_ALREADY_ONLINE ;
 int ERR_NO_ERROR ;
 int Lock (int ) ;
 int NewVirtualHostEx (int ,int *,int *,int *,TYPE_1__*) ;
 int NiWriteConfig (TYPE_1__*) ;
 int Unlock (int ) ;

UINT NtOnline(NAT *n, RPC_DUMMY *t)
{
 UINT ret = ERR_NO_ERROR;

 Lock(n->lock);
 {
  if (n->Online)
  {

   ret = ERR_ALREADY_ONLINE;
  }
  else
  {
   if (n->ClientOption == ((void*)0) || n->ClientAuth == ((void*)0))
   {

    ret = ERR_ACCOUNT_NOT_PRESENT;
   }
   else
   {

    n->Online = 1;


    n->Virtual = NewVirtualHostEx(n->Cedar, n->ClientOption, n->ClientAuth,
     &n->Option, n);
   }
  }
 }
 Unlock(n->lock);

 NiWriteConfig(n);

 return ret;
}
