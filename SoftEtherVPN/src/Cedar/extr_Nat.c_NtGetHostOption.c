
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VH_OPTION ;
typedef int UINT ;
struct TYPE_3__ {int lock; int Option; } ;
typedef TYPE_1__ NAT ;


 int Copy (int *,int *,int) ;
 int ERR_NO_ERROR ;
 int Lock (int ) ;
 int Unlock (int ) ;

UINT NtGetHostOption(NAT *n, VH_OPTION *t)
{
 UINT ret = ERR_NO_ERROR;

 Lock(n->lock);
 {
  Copy(t, &n->Option, sizeof(VH_OPTION));
 }
 Unlock(n->lock);

 return ret;
}
