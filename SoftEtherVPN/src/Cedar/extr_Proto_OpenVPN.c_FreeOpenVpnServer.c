
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_5__ {int Dh; int SendPacketList; int RecvPacketList; int SessionList; } ;
typedef int OPENVPN_SESSION ;
typedef TYPE_1__ OPENVPN_SERVER ;


 int DhFree (int ) ;
 int Free (TYPE_1__*) ;
 int FreeUdpPacket (int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int OvsFreeSession (int *) ;
 int OvsLog (TYPE_1__*,int *,int *,char*) ;
 int ReleaseList (int ) ;

void FreeOpenVpnServer(OPENVPN_SERVER *s)
{
 UINT i;

 if (s == ((void*)0))
 {
  return;
 }

 OvsLog(s, ((void*)0), ((void*)0), "LO_STOP");


 for (i = 0; i < LIST_NUM(s->SessionList); ++i)
 {
  OPENVPN_SESSION *se = LIST_DATA(s->SessionList, i);
  OvsFreeSession(se);
 }

 ReleaseList(s->SessionList);


 for (i = 0; i < LIST_NUM(s->RecvPacketList); ++i)
 {
  UDPPACKET *p = LIST_DATA(s->RecvPacketList, i);
  FreeUdpPacket(p);
 }

 ReleaseList(s->RecvPacketList);


 for (i = 0; i < LIST_NUM(s->SendPacketList); ++i)
 {
  UDPPACKET *p = LIST_DATA(s->SendPacketList, i);
  FreeUdpPacket(p);
 }

 ReleaseList(s->SendPacketList);

 DhFree(s->Dh);

 Free(s);
}
