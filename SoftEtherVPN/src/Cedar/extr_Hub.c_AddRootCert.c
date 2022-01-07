
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {TYPE_1__* HubDb; } ;
struct TYPE_4__ {int RootCertList; } ;
typedef TYPE_1__ HUBDB ;
typedef TYPE_2__ HUB ;


 int CloneX (int *) ;
 scalar_t__ CompareX (int *,int *) ;
 int Insert (int ,int ) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ MAX_HUB_CERTS ;
 int UnlockList (int ) ;

void AddRootCert(HUB *hub, X *x)
{
 HUBDB *db;

 if (hub == ((void*)0) || x == ((void*)0))
 {
  return;
 }

 db = hub->HubDb;
 if (db != ((void*)0))
 {
  LockList(db->RootCertList);
  {
   if (LIST_NUM(db->RootCertList) < MAX_HUB_CERTS)
   {
    UINT i;
    bool ok = 1;

    for (i = 0;i < LIST_NUM(db->RootCertList);i++)
    {
     X *exist_x = LIST_DATA(db->RootCertList, i);
     if (CompareX(exist_x, x))
     {
      ok = 0;
      break;
     }
    }

    if (ok)
    {
     Insert(db->RootCertList, CloneX(x));
    }
   }
  }
  UnlockList(db->RootCertList);
 }
}
