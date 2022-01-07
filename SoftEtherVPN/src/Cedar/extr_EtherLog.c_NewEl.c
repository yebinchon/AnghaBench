
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int AutoDeleteCheckDiskFreeSpaceMin; int Eraser; int LicenseStatus; int LicenseSystem; int Cedar; int ref; int lock; } ;
typedef TYPE_1__ EL ;


 int ElInitConfig (TYPE_1__*) ;
 int ElParseCurrentLicenseStatus (int ,int ) ;
 int ElStartListener (TYPE_1__*) ;
 int InitEth () ;
 int NewCedar (int *,int *) ;
 int NewEraser (int *,int ) ;
 int NewLock () ;
 int NewRef () ;
 int RegistWindowsFirewallAll () ;
 TYPE_1__* ZeroMalloc (int) ;

EL *NewEl()
{
 EL *e;





 e = ZeroMalloc(sizeof(EL));
 e->lock = NewLock();
 e->ref = NewRef();

 e->Cedar = NewCedar(((void*)0), ((void*)0));



 InitEth();


 ElInitConfig(e);


 ElStartListener(e);


 ElParseCurrentLicenseStatus(e->LicenseSystem, e->LicenseStatus);


 e->Eraser = NewEraser(((void*)0), e->AutoDeleteCheckDiskFreeSpaceMin);

 return e;
}
