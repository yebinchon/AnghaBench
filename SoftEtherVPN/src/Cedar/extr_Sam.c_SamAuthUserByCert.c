
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_17__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_27__ {int serial; TYPE_1__* subject_name; } ;
typedef TYPE_3__ X ;
struct TYPE_28__ {scalar_t__ AuthType; int lock; scalar_t__ AuthData; } ;
typedef TYPE_4__ USER ;
struct TYPE_31__ {TYPE_17__* Serial; int * CommonName; } ;
struct TYPE_30__ {int UserX; } ;
struct TYPE_29__ {TYPE_2__* HubDb; } ;
struct TYPE_26__ {int RootCertList; } ;
struct TYPE_25__ {int CommonName; } ;
struct TYPE_24__ {int size; } ;
typedef TYPE_5__ HUB ;
typedef TYPE_6__ AUTHUSERCERT ;
typedef TYPE_7__ AUTHROOTCERT ;


 scalar_t__ AUTHTYPE_ROOTCERT ;
 scalar_t__ AUTHTYPE_USERCERT ;
 TYPE_4__* AcGetUser (TYPE_5__*,char*) ;
 int AcLock (TYPE_5__*) ;
 int AcUnlock (TYPE_5__*) ;
 int CheckXDateNow (TYPE_3__*) ;
 scalar_t__ CompareX (int ,TYPE_3__*) ;
 int CompareXSerial (int ,TYPE_17__*) ;
 int GSF_DISABLE_CERT_AUTH ;
 int GetAllNameFromX (int *,int,TYPE_3__*) ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 TYPE_3__* GetIssuerFromList (int ,TYPE_3__*) ;
 int HLog (TYPE_5__*,char*,char*,int *) ;
 int IsValidCertInHub (TYPE_5__*,TYPE_3__*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int ReleaseUser (TYPE_4__*) ;
 int UniIsEmptyStr (int *) ;
 scalar_t__ UniStrCmpi (int ,int *) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

bool SamAuthUserByCert(HUB *h, char *username, X *x)
{
 bool b = 0;

 if (h == ((void*)0) || username == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_CERT_AUTH) != 0)
 {
  return 0;
 }


 if (CheckXDateNow(x) == 0)
 {
  return 0;
 }


 if (IsValidCertInHub(h, x) == 0)
 {

  wchar_t tmp[MAX_SIZE * 2];


  GetAllNameFromX(tmp, sizeof(tmp), x);

  HLog(h, "LH_AUTH_NG_CERT", username, tmp);
  return 0;
 }

 AcLock(h);
 {
  USER *u;
  u = AcGetUser(h, username);
  if (u)
  {
   Lock(u->lock);
   {
    if (u->AuthType == AUTHTYPE_USERCERT)
    {

     AUTHUSERCERT *auth = (AUTHUSERCERT *)u->AuthData;
     if (CompareX(auth->UserX, x))
     {
      b = 1;
     }
    }
    else if (u->AuthType == AUTHTYPE_ROOTCERT)
    {

     AUTHROOTCERT *auth = (AUTHROOTCERT *)u->AuthData;
     if (h->HubDb != ((void*)0))
     {
      LockList(h->HubDb->RootCertList);
      {
       X *root_cert;
       root_cert = GetIssuerFromList(h->HubDb->RootCertList, x);
       if (root_cert != ((void*)0))
       {
        b = 1;
        if (auth->CommonName != ((void*)0) && UniIsEmptyStr(auth->CommonName) == 0)
        {

         if (UniStrCmpi(x->subject_name->CommonName, auth->CommonName) != 0)
         {
          b = 0;
         }
        }
        if (auth->Serial != ((void*)0) && auth->Serial->size >= 1)
        {

         if (CompareXSerial(x->serial, auth->Serial) == 0)
         {
          b = 0;
         }
        }
       }
      }
      UnlockList(h->HubDb->RootCertList);
     }
    }
   }
   Unlock(u->lock);
   ReleaseUser(u);
  }
 }
 AcUnlock(h);

 if (b)
 {
  wchar_t tmp[MAX_SIZE * 2];


  GetAllNameFromX(tmp, sizeof(tmp), x);

  HLog(h, "LH_AUTH_OK_CERT", username, tmp);
 }

 return b;
}
