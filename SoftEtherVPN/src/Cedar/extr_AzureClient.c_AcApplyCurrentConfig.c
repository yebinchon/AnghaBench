
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int InternetSetting; int CurrentHostName; } ;
struct TYPE_12__ {int IsEnabled; int Event; int Lock; TYPE_1__* CurrentSock; TYPE_6__ DDnsStatus; } ;
struct TYPE_11__ {int InternetSetting; int CurrentHostName; } ;
struct TYPE_10__ {int ref; } ;
typedef TYPE_1__ SOCK ;
typedef int INTERNET_SETTING ;
typedef TYPE_2__ DDNS_CLIENT_STATUS ;
typedef TYPE_3__ AZURE_CLIENT ;


 int AddRef (int ) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int Copy (TYPE_6__*,TYPE_2__*,int) ;
 int Disconnect (TYPE_1__*) ;
 int Lock (int ) ;
 int ReleaseSock (TYPE_1__*) ;
 int Set (int ) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int Unlock (int ) ;

void AcApplyCurrentConfig(AZURE_CLIENT *ac, DDNS_CLIENT_STATUS *ddns_status)
{
 bool disconnect_now = 0;
 SOCK *disconnect_sock = ((void*)0);

 if (ac == ((void*)0))
 {
  return;
 }


 Lock(ac->Lock);
 {
  if (ddns_status != ((void*)0))
  {
   if (StrCmpi(ac->DDnsStatus.CurrentHostName, ddns_status->CurrentHostName) != 0)
   {

    disconnect_now = 1;
   }

   if (Cmp(&ac->DDnsStatus.InternetSetting, &ddns_status->InternetSetting, sizeof(INTERNET_SETTING)) != 0)
   {

    disconnect_now = 1;
   }

   Copy(&ac->DDnsStatus, ddns_status, sizeof(DDNS_CLIENT_STATUS));
  }

  if (ac->IsEnabled == 0)
  {

   disconnect_now = 1;
  }

  if (disconnect_now)
  {
   if (ac->CurrentSock != ((void*)0))
   {
    disconnect_sock = ac->CurrentSock;
    AddRef(disconnect_sock->ref);
   }
  }
 }
 Unlock(ac->Lock);

 if (disconnect_sock != ((void*)0))
 {
  Disconnect(disconnect_sock);
  ReleaseSock(disconnect_sock);
 }

 Set(ac->Event);
}
