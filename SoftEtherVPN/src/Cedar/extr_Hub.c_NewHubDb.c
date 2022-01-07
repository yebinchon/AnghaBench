
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AcList; void* CrlList; void* RootCertList; void* UserList; void* GroupList; } ;
typedef TYPE_1__ HUBDB ;


 int * CompareCert ;
 int * CompareGroupName ;
 int * CompareUserName ;
 int NewAcList () ;
 void* NewList (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

HUBDB *NewHubDb()
{
 HUBDB *d = ZeroMalloc(sizeof(HUBDB));

 d->GroupList = NewList(CompareGroupName);
 d->UserList = NewList(CompareUserName);
 d->RootCertList = NewList(CompareCert);
 d->CrlList = NewList(((void*)0));
 d->AcList = NewAcList();

 return d;
}
