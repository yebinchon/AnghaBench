
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_18__ {int OsServiceCheckThreadEvent; int LockSettings; TYPE_3__* Ike; TYPE_10__* UdpListener; TYPE_2__* Cedar; int Services; scalar_t__ NoMoreChangeSettings; } ;
struct TYPE_17__ {int IPsec_Secret; scalar_t__ EtherIP_IPsec; scalar_t__ L2TP_IPsec; scalar_t__ L2TP_Raw; } ;
struct TYPE_16__ {int Secret; } ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {TYPE_4__ ListenIP; } ;
struct TYPE_13__ {int ListenIP; } ;
typedef TYPE_4__ IPSEC_SERVICES ;
typedef TYPE_5__ IPSEC_SERVER ;
typedef int IP ;


 int AddPortToUdpListener (TYPE_10__*,int ) ;
 int Copy (int *,TYPE_4__*,int) ;
 int DeletePortFromUdpListener (TYPE_10__*,int ) ;
 int IPSEC_PORT_IPSEC_ESP_RAW ;
 int IPSEC_PORT_IPSEC_ESP_RAW_WPF ;
 int IPSEC_PORT_IPSEC_ESP_UDP ;
 int IPSEC_PORT_IPSEC_ISAKMP ;
 int IPSEC_PORT_L2TP ;
 int IPsecNormalizeServiceSetting (TYPE_5__*) ;
 int IsEmptyStr (int ) ;
 int IsZero (TYPE_4__*,int) ;
 int Lock (int ) ;
 int Set (int ) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;

void IPsecServerSetServices(IPSEC_SERVER *s, IPSEC_SERVICES *sl)
{

 if (s == ((void*)0) || sl == ((void*)0))
 {
  return;
 }

 if (IsZero(sl, sizeof(IPSEC_SERVICES)) == 0)
 {
  if (s->NoMoreChangeSettings)
  {
   return;
  }
 }

 Lock(s->LockSettings);
 {
  Copy(&s->Services, sl, sizeof(IPSEC_SERVICES));

  Copy(&s->UdpListener->ListenIP, &s->Cedar->Server->ListenIP, sizeof(IP));

  if (sl->L2TP_Raw)
  {
   AddPortToUdpListener(s->UdpListener, IPSEC_PORT_L2TP);
  }
  else
  {
   DeletePortFromUdpListener(s->UdpListener, IPSEC_PORT_L2TP);
  }

  if (sl->L2TP_IPsec || sl->EtherIP_IPsec)
  {
   AddPortToUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ISAKMP);
   AddPortToUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ESP_UDP);
   AddPortToUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW);
   AddPortToUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW_WPF);
  }
  else
  {
   DeletePortFromUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ISAKMP);
   DeletePortFromUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ESP_UDP);
   DeletePortFromUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW);
   DeletePortFromUdpListener(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW_WPF);
  }

  if (IsEmptyStr(sl->IPsec_Secret) == 0)
  {
   StrCpy(s->Ike->Secret, sizeof(s->Ike->Secret), sl->IPsec_Secret);
  }

  IPsecNormalizeServiceSetting(s);
 }
 Unlock(s->LockSettings);

 Set(s->OsServiceCheckThreadEvent);
}
