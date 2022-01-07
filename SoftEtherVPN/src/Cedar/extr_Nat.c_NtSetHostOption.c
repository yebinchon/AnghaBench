
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VH_OPTION ;
typedef int UINT ;
struct TYPE_4__ {int Virtual; int lock; int Option; } ;
typedef TYPE_1__ NAT ;


 int Copy (int *,int *,int) ;
 int ERR_NO_ERROR ;
 int Lock (int ) ;
 int NiWriteConfig (TYPE_1__*) ;
 int SetVirtualHostOption (int ,int *) ;
 int Unlock (int ) ;

UINT NtSetHostOption(NAT *n, VH_OPTION *t)
{
 UINT ret = ERR_NO_ERROR;

 Lock(n->lock);
 {
  Copy(&n->Option, t, sizeof(VH_OPTION));
 }
 Unlock(n->lock);

 SetVirtualHostOption(n->Virtual, t);

 NiWriteConfig(n);

 return ret;
}
