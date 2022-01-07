
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sl ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int NoMoreChangeSettings; int Halt; int LockSettings; int OsServiceCheckThreadEvent; int OsServiceCheckThread; int EtherIPIdList; int Ike; int L2TP; int Cedar; int UdpListener; } ;
typedef int IPSEC_SERVICES ;
typedef TYPE_1__ IPSEC_SERVER ;
typedef TYPE_1__ ETHERIP_ID ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeIKEServer (int ) ;
 int FreeL2TPServer (int ) ;
 int FreeUdpListener (int ) ;
 int INFINITE ;
 int IPsecServerSetServices (TYPE_1__*,int *) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseList (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int StopIKEServer (int ) ;
 int StopL2TPServer (int ,int) ;
 int WaitThread (int ,int ) ;
 int Zero (int *,int) ;

void FreeIPsecServer(IPSEC_SERVER *s)
{
 UINT i;
 IPSEC_SERVICES sl;

 if (s == ((void*)0))
 {
  return;
 }

 s->NoMoreChangeSettings = 1;


 StopL2TPServer(s->L2TP, 0);


 StopIKEServer(s->Ike);


 Zero(&sl, sizeof(sl));
 IPsecServerSetServices(s, &sl);


 FreeUdpListener(s->UdpListener);

 ReleaseCedar(s->Cedar);

 FreeL2TPServer(s->L2TP);

 FreeIKEServer(s->Ike);

 for (i = 0;i < LIST_NUM(s->EtherIPIdList);i++)
 {
  ETHERIP_ID *k = LIST_DATA(s->EtherIPIdList, i);

  Free(k);
 }

 ReleaseList(s->EtherIPIdList);


 s->Halt = 1;
 Set(s->OsServiceCheckThreadEvent);
 WaitThread(s->OsServiceCheckThread, INFINITE);
 ReleaseThread(s->OsServiceCheckThread);
 ReleaseEvent(s->OsServiceCheckThreadEvent);

 DeleteLock(s->LockSettings);

 Free(s);
}
