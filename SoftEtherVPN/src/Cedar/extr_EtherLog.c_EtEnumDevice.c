
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_16__ {int DeviceList; TYPE_1__* LicenseStatus; } ;
struct TYPE_15__ {scalar_t__ Active; int DeviceName; } ;
struct TYPE_14__ {int NumItem; TYPE_2__* Items; } ;
struct TYPE_13__ {int Active; int DeviceName; } ;
struct TYPE_12__ {scalar_t__ Valid; } ;
typedef TYPE_2__ RPC_ENUM_DEVICE_ITEM ;
typedef TYPE_3__ RPC_ENUM_DEVICE ;
typedef TYPE_4__ EL_DEVICE ;
typedef TYPE_5__ EL ;


 scalar_t__ ELOG_IS_BETA ;
 size_t ERR_BETA_EXPIRES ;
 size_t ERR_NO_ERROR ;
 int ElIsBetaExpired () ;
 int FreeRpcEnumDevice (TYPE_3__*) ;
 TYPE_4__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 int StrCpy (int ,int,int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT EtEnumDevice(EL *e, RPC_ENUM_DEVICE *t)
{
 bool is_beta_expired = ElIsBetaExpired();

 if (is_beta_expired)
 {

  return ERR_BETA_EXPIRES;
 }

 FreeRpcEnumDevice(t);
 Zero(t, sizeof(RPC_ENUM_DEVICE));

 LockList(e->DeviceList);
 {
  UINT i;

  t->NumItem = LIST_NUM(e->DeviceList);
  t->Items = ZeroMalloc(sizeof(RPC_ENUM_DEVICE_ITEM) * t->NumItem);

  for (i = 0;i < t->NumItem;i++)
  {
   RPC_ENUM_DEVICE_ITEM *d = &t->Items[i];
   EL_DEVICE *eld = LIST_DATA(e->DeviceList, i);

   StrCpy(d->DeviceName, sizeof(d->DeviceName), eld->DeviceName);
   d->Active = eld->Active && ((ELOG_IS_BETA || e->LicenseStatus->Valid) ? 1 : 0);
  }
 }
 UnlockList(e->DeviceList);

 return ERR_NO_ERROR;
}
