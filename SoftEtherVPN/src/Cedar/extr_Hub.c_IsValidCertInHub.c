
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X ;
struct TYPE_5__ {TYPE_1__* HubDb; } ;
struct TYPE_4__ {int CrlList; } ;
typedef TYPE_2__ HUB ;


 int IsCertMatchCrlList (int *,int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

bool IsValidCertInHub(HUB *h, X *x)
{
 bool ret;

 if (h == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }

 if (h->HubDb == ((void*)0))
 {
  return 0;
 }

 LockList(h->HubDb->CrlList);
 {
  ret = IsCertMatchCrlList(x, h->HubDb->CrlList);
 }
 UnlockList(h->HubDb->CrlList);

 if (ret)
 {

  return 0;
 }


 return 1;
}
