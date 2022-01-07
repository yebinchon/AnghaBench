
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_6__ {int ThreadList; int Engine; int Cedar; int SockEvent; int ClientList; int IkeSaList; int IPsecSaList; int SendPacketList; } ;
typedef int IPSECSA ;
typedef TYPE_1__ IKE_SERVER ;
typedef int IKE_SA ;
typedef int IKE_CLIENT ;


 int Debug (char*,...) ;
 int Free (TYPE_1__*) ;
 int FreeIPsecSa (int *) ;
 int FreeIkeClient (TYPE_1__*,int *) ;
 int FreeIkeEngine (int ) ;
 int FreeIkeSa (int *) ;
 int FreeThreadList (int ) ;
 int FreeUdpPacket (int *) ;
 int IPsecLog (TYPE_1__*,int *,int *,int *,char*,...) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseList (int ) ;
 int ReleaseSockEvent (int ) ;

void FreeIKEServer(IKE_SERVER *ike)
{
 UINT i;

 if (ike == ((void*)0))
 {
  return;
 }

 IPsecLog(ike, ((void*)0), ((void*)0), ((void*)0), "LI_STOPPING");

 for (i = 0;i < LIST_NUM(ike->SendPacketList);i++)
 {
  UDPPACKET *udp = LIST_DATA(ike->SendPacketList, i);

  FreeUdpPacket(udp);
 }

 ReleaseList(ike->SendPacketList);

 Debug("Num of IPsec SAs: %u\n", LIST_NUM(ike->IPsecSaList));
 IPsecLog(ike, ((void*)0), ((void*)0), ((void*)0), "LI_NUM_IPSEC_SA", LIST_NUM(ike->IPsecSaList));

 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);

  FreeIPsecSa(sa);
 }

 ReleaseList(ike->IPsecSaList);

 Debug("Num of IKE SAs: %u\n", LIST_NUM(ike->IkeSaList));
 IPsecLog(ike, ((void*)0), ((void*)0), ((void*)0), "LI_NUM_IKE_SA", LIST_NUM(ike->IkeSaList));

 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

  FreeIkeSa(sa);
 }

 ReleaseList(ike->IkeSaList);

 Debug("Num of IKE_CLIENTs: %u\n", LIST_NUM(ike->ClientList));
 IPsecLog(ike, ((void*)0), ((void*)0), ((void*)0), "LI_NUM_IKE_CLIENTS", LIST_NUM(ike->ClientList));

 for (i = 0;i < LIST_NUM(ike->ClientList);i++)
 {
  IKE_CLIENT *c = LIST_DATA(ike->ClientList, i);

  FreeIkeClient(ike, c);
 }

 ReleaseList(ike->ClientList);

 ReleaseSockEvent(ike->SockEvent);

 IPsecLog(ike, ((void*)0), ((void*)0), ((void*)0), "LI_STOP");

 ReleaseCedar(ike->Cedar);

 FreeIkeEngine(ike->Engine);

 Debug("FreeThreadList()...\n");
 FreeThreadList(ike->ThreadList);
 Debug("FreeThreadList() Done.\n");

 Free(ike);
}
