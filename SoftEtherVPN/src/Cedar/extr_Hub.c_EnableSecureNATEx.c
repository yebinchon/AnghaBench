
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Type; int EnableSecureNAT; int Offline; int lock_online; int SecureNATOption; int * SecureNAT; int SessionList; TYPE_2__* Cedar; } ;
struct TYPE_7__ {TYPE_1__* Server; } ;
struct TYPE_6__ {scalar_t__ ServerType; } ;
typedef TYPE_3__ HUB ;


 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SnFreeSecureNAT (int *) ;
 int * SnNewSecureNAT (TYPE_3__*,int ) ;
 int Unlock (int ) ;

void EnableSecureNATEx(HUB *h, bool enable, bool no_change)
{
 bool for_cluster = 0;

 if (h == ((void*)0))
 {
  return;
 }

 if (h->Cedar->Server != ((void*)0) && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  if (h->Type == HUB_TYPE_FARM_DYNAMIC)
  {
   for_cluster = 1;
  }
 }

 Lock(h->lock_online);
 {
  if (no_change == 0)
  {
   h->EnableSecureNAT = enable;
  }

  if (h->EnableSecureNAT == 0)
  {
STOP:

   if (h->SecureNAT != ((void*)0))
   {
    SnFreeSecureNAT(h->SecureNAT);
    h->SecureNAT = ((void*)0);
   }
  }
  else
  {
   if (for_cluster)
   {
    if ((h->SecureNAT != ((void*)0) && LIST_NUM(h->SessionList) <= 1) ||
     (h->SecureNAT == ((void*)0) && LIST_NUM(h->SessionList) == 0))
    {


     goto STOP;
    }
   }


   if (h->SecureNAT == ((void*)0) && h->Offline == 0)
   {
    h->SecureNAT = SnNewSecureNAT(h, h->SecureNATOption);
   }
  }
 }
 Unlock(h->lock_online);
}
