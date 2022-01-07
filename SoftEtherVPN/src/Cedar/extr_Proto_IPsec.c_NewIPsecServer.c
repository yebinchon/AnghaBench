
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_16__ {TYPE_1__* Server; int ref; } ;
struct TYPE_15__ {int OsServiceCheckThread; int OsServiceCheckThreadEvent; int EtherIPIdList; int UdpListener; TYPE_10__* Ike; int L2TP; TYPE_3__* Cedar; int LockSettings; } ;
struct TYPE_14__ {int ListenIP; } ;
struct TYPE_13__ {int Secret; } ;
typedef TYPE_2__ IPSEC_SERVER ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int CmpEtherIPId ;
 int IPSEC_DEFAULT_SECRET ;
 int IPsecOsServiceCheckThread ;
 int IPsecServerUdpPacketRecvProc ;
 int NewEvent () ;
 TYPE_10__* NewIKEServer (TYPE_3__*,TYPE_2__*) ;
 int NewL2TPServer (TYPE_3__*) ;
 int NewList (int ) ;
 int NewLock () ;
 int NewThread (int ,TYPE_2__*) ;
 int NewUdpListener (int ,TYPE_2__*,int *) ;
 int StrCpy (int ,int,int ) ;
 TYPE_2__* ZeroMalloc (int) ;

IPSEC_SERVER *NewIPsecServer(CEDAR *cedar)
{
 IPSEC_SERVER *s;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(IPSEC_SERVER));

 s->LockSettings = NewLock();

 s->Cedar = cedar;

 AddRef(s->Cedar->ref);

 s->L2TP = NewL2TPServer(cedar);

 s->Ike = NewIKEServer(cedar, s);
 StrCpy(s->Ike->Secret, sizeof(s->Ike->Secret), IPSEC_DEFAULT_SECRET);

 s->UdpListener = NewUdpListener(IPsecServerUdpPacketRecvProc, s, &cedar->Server->ListenIP);

 s->EtherIPIdList = NewList(CmpEtherIPId);


 s->OsServiceCheckThreadEvent = NewEvent();
 s->OsServiceCheckThread = NewThread(IPsecOsServiceCheckThread, s);

 return s;
}
