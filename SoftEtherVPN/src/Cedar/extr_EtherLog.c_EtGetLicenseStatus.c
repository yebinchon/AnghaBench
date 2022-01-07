
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int Expires; int SystemId; int Valid; } ;
struct TYPE_8__ {TYPE_6__* LicenseStatus; int * LicenseSystem; } ;
struct TYPE_7__ {int SystemExpires; int SystemId; int Valid; } ;
typedef TYPE_1__ RPC_EL_LICENSE_STATUS ;
typedef int LICENSE_SYSTEM ;
typedef TYPE_2__ EL ;


 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ElParseCurrentLicenseStatus (int *,TYPE_6__*) ;
 int Zero (TYPE_1__*,int) ;

UINT EtGetLicenseStatus(EL *e, RPC_EL_LICENSE_STATUS *t)
{
 UINT ret = ERR_NO_ERROR;
 LICENSE_SYSTEM *ls = e->LicenseSystem;

 if (ls == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 Zero(t, sizeof(RPC_EL_LICENSE_STATUS));


 ElParseCurrentLicenseStatus(ls, e->LicenseStatus);

 t->Valid = e->LicenseStatus->Valid;
 t->SystemId = e->LicenseStatus->SystemId;
 t->SystemExpires = e->LicenseStatus->Expires;

 return ret;
}
