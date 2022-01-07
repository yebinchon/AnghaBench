
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int Cedar; struct TYPE_6__* LicenseStatus; int * LicenseSystem; int Eraser; } ;
typedef TYPE_1__ EL ;


 int DeleteLock (int ) ;
 int ElFreeConfig (TYPE_1__*) ;
 int ElStopListener (TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int FreeEraser (int ) ;
 int FreeEth () ;
 int ReleaseCedar (int ) ;

void CleanupEl(EL *e)
{

 if (e == ((void*)0))
 {
  return;
 }


 FreeEraser(e->Eraser);


 ElStopListener(e);


 ElFreeConfig(e);


 if(e->LicenseSystem != ((void*)0))
 {
 }


 if(e->LicenseStatus != ((void*)0))
 {
  Free(e->LicenseStatus);
 }


 FreeEth();

 ReleaseCedar(e->Cedar);

 DeleteLock(e->lock);

 Free(e);
}
