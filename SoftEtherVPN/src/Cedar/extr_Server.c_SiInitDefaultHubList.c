
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int o ;
struct TYPE_13__ {int Bridge; } ;
struct TYPE_12__ {int Offline; int SecurePassword; int HashedPassword; int CreatedTime; } ;
struct TYPE_11__ {TYPE_8__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int HUB_OPTION ;
typedef int HUB_LOG ;
typedef TYPE_2__ HUB ;


 int AddHub (TYPE_8__*,TYPE_2__*) ;
 TYPE_2__* NewHub (TYPE_8__*,int ,int *) ;
 int Rand (int ,int) ;
 int ReleaseHub (TYPE_2__*) ;
 int SERVER_DEFAULT_BRIDGE_NAME ;
 int SERVER_DEFAULT_HUB_NAME ;
 int SetHubLogSetting (TYPE_2__*,int *) ;
 int SetHubOnline (TYPE_2__*) ;
 int SiSetDefaultHubOption (int *) ;
 int SiSetDefaultLogSetting (int *) ;
 int SystemTime64 () ;
 int Zero (int *,int) ;

void SiInitDefaultHubList(SERVER *s)
{
 HUB *h;
 HUB_OPTION o;
 HUB_LOG g;

 if (s == ((void*)0))
 {
  return;
 }

 Zero(&o, sizeof(o));


 SiSetDefaultHubOption(&o);

 h = NewHub(s->Cedar, s->Cedar->Bridge == 0 ? SERVER_DEFAULT_HUB_NAME : SERVER_DEFAULT_BRIDGE_NAME, &o);
 h->CreatedTime = SystemTime64();
 AddHub(s->Cedar, h);

 if (s->Cedar->Bridge)
 {

  Rand(h->HashedPassword, sizeof(h->HashedPassword));
  Rand(h->SecurePassword, sizeof(h->SecurePassword));
 }

 h->Offline = 1;
 SetHubOnline(h);


 SiSetDefaultLogSetting(&g);
 SetHubLogSetting(h, &g);

 ReleaseHub(h);
}
