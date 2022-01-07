
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X ;
struct TYPE_9__ {TYPE_1__* HubDb; } ;
struct TYPE_8__ {TYPE_4__* Hub; } ;
struct TYPE_7__ {int LinkModeClient; TYPE_3__* Link; } ;
struct TYPE_6__ {int RootCertList; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ LINK ;
typedef TYPE_4__ HUB ;


 int * GetIssuerFromList (int ,int *) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

bool CheckSignatureByCaLinkMode(SESSION *s, X *x)
{
 LINK *k;
 HUB *h;
 bool ret = 0;

 if (s == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }

 if (s->LinkModeClient == 0 || (k = s->Link) == ((void*)0))
 {
  return 0;
 }

 h = k->Hub;

 if (h->HubDb != ((void*)0))
 {
  LockList(h->HubDb->RootCertList);
  {
   X *root_cert;
   root_cert = GetIssuerFromList(h->HubDb->RootCertList, x);
   if (root_cert != ((void*)0))
   {
    ret = 1;
   }
  }
  UnlockList(h->HubDb->RootCertList);
 }

 return ret;
}
