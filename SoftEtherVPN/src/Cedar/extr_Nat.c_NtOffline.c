
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Online; int lock; int * Virtual; } ;
typedef int RPC_DUMMY ;
typedef TYPE_1__ NAT ;


 int ERR_NO_ERROR ;
 int ERR_OFFLINE ;
 int Lock (int ) ;
 int NiWriteConfig (TYPE_1__*) ;
 int ReleaseVirtual (int *) ;
 int StopVirtualHost (int *) ;
 int Unlock (int ) ;

UINT NtOffline(NAT *n, RPC_DUMMY *t)
{
 UINT ret = ERR_NO_ERROR;

 Lock(n->lock);
 {
  if (n->Online == 0)
  {

   ret = ERR_OFFLINE;
  }
  else
  {

   StopVirtualHost(n->Virtual);
   ReleaseVirtual(n->Virtual);
   n->Virtual = ((void*)0);

   n->Online = 0;
  }
 }
 Unlock(n->lock);

 NiWriteConfig(n);

 return ret;
}
