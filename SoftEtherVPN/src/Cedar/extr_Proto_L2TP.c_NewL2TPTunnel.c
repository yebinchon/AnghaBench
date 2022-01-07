
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_17__ {int DestPort; int DstIP; int SrcPort; int SrcIP; } ;
typedef TYPE_1__ UDPPACKET ;
struct TYPE_21__ {int DataSize; int * Data; } ;
struct TYPE_20__ {int Ver; int IsYamahaV3; } ;
struct TYPE_19__ {int Now; } ;
struct TYPE_18__ {int IsV3; scalar_t__ TunnelId2; int IsCiscoV3; int LastHelloSent; int LastRecvTick; void* RecvQueue; void* SendQueue; int IsYamahaV3; int ClientIp; int TunnelId1; int * VendorName; int * HostName; int ServerPort; int ServerIp; int ClientPort; void* SessionList; } ;
typedef TYPE_2__ L2TP_TUNNEL ;
typedef TYPE_3__ L2TP_SERVER ;
typedef TYPE_4__ L2TP_PACKET ;
typedef TYPE_5__ L2TP_AVP ;
typedef int IP ;


 int * CmpL2TPQueueForRecv ;
 int Copy (int *,int *,int) ;
 int FreeL2TPTunnel (TYPE_2__*) ;
 scalar_t__ GenerateNewTunnelIdEx (TYPE_3__*,int *,int) ;
 TYPE_5__* GetAVPValue (TYPE_4__*,int ) ;
 TYPE_5__* GetAVPValueEx (TYPE_4__*,int ,int ) ;
 int IPToStr (int *,int,int *) ;
 int L2TPV3_CISCO_AVP_TUNNEL_ID ;
 int L2TP_AVP_TYPE_ASSIGNED_TUNNEL ;
 int L2TP_AVP_TYPE_HOST_NAME ;
 int L2TP_AVP_TYPE_V3_TUNNEL_ID ;
 int L2TP_AVP_TYPE_VENDOR_NAME ;
 int L2TP_AVP_VENDOR_ID_CISCO ;
 void* NewList (int *) ;
 int READ_UINT (int *) ;
 int READ_USHORT (int *) ;
 TYPE_2__* ZeroMalloc (int) ;

L2TP_TUNNEL *NewL2TPTunnel(L2TP_SERVER *l2tp, L2TP_PACKET *p, UDPPACKET *udp)
{
 L2TP_TUNNEL *t;
 L2TP_AVP *a;

 if (l2tp == ((void*)0) || p == ((void*)0) || udp == ((void*)0))
 {
  return ((void*)0);
 }

 t = ZeroMalloc(sizeof(L2TP_TUNNEL));

 if (p->Ver == 3)
 {
  t->IsV3 = 1;
 }

 t->SessionList = NewList(((void*)0));

 Copy(&t->ClientIp, &udp->SrcIP, sizeof(IP));
 t->ClientPort = udp->SrcPort;

 Copy(&t->ServerIp, &udp->DstIP, sizeof(IP));
 t->ServerPort = udp->DestPort;


 a = GetAVPValue(p, L2TP_AVP_TYPE_HOST_NAME);
 if (a != ((void*)0) && a->DataSize >= 1 && a->DataSize < sizeof(t->HostName))
 {
  Copy(t->HostName, a->Data, a->DataSize);
 }
 else
 {
  IPToStr(t->HostName, sizeof(t->HostName), &t->ClientIp);
 }


 a = GetAVPValue(p, L2TP_AVP_TYPE_VENDOR_NAME);
 if (a != ((void*)0) && a->DataSize >= 1 && a->DataSize < sizeof(t->VendorName))
 {
  Copy(t->VendorName, a->Data, a->DataSize);
 }


 a = GetAVPValue(p, (p->Ver == 3 ? L2TP_AVP_TYPE_V3_TUNNEL_ID : L2TP_AVP_TYPE_ASSIGNED_TUNNEL));
 if (a == ((void*)0) || a->DataSize != (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)))
 {
  goto LABEL_ERROR;
 }

 t->TunnelId1 = (t->IsV3 ? READ_UINT(a->Data) : READ_USHORT(a->Data));
 t->TunnelId2 = GenerateNewTunnelIdEx(l2tp, &t->ClientIp, t->IsV3);

 if (t->TunnelId2 == 0)
 {
  goto LABEL_ERROR;
 }

 if (p->Ver == 3)
 {

  a = GetAVPValueEx(p, L2TPV3_CISCO_AVP_TUNNEL_ID, L2TP_AVP_VENDOR_ID_CISCO);
  if (a != ((void*)0))
  {
   t->IsCiscoV3 = 1;
  }


  t->IsYamahaV3 = p->IsYamahaV3;
 }


 t->SendQueue = NewList(((void*)0));


 t->RecvQueue = NewList(CmpL2TPQueueForRecv);

 t->LastRecvTick = l2tp->Now;
 t->LastHelloSent = l2tp->Now;

 return t;

LABEL_ERROR:
 FreeL2TPTunnel(t);
 return ((void*)0);
}
