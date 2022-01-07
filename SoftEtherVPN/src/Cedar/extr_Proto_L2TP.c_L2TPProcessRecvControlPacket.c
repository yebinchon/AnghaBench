
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT ;
struct TYPE_31__ {int DataSize; int Data; } ;
struct TYPE_30__ {scalar_t__ SessionId; scalar_t__ MessageType; int AvpList; } ;
struct TYPE_29__ {int Halt; int Now; } ;
struct TYPE_28__ {int PseudowireType; scalar_t__ SessionId1; int SessionId2; int IsV3; int Established; int Disconnecting; scalar_t__ IsCiscoV3; } ;
struct TYPE_27__ {int Established; int Disconnecting; int WantToDisconnect; scalar_t__ TunnelId1; int IsYamahaV3; int TunnelId2; scalar_t__ IsV3; int SessionList; int LastHelloSent; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;
typedef TYPE_3__ L2TP_SERVER ;
typedef TYPE_4__ L2TP_PACKET ;
typedef TYPE_5__ L2TP_AVP ;


 int Add (int ,TYPE_2__*) ;
 int Debug (char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 int DisconnectL2TPSession (TYPE_1__*,TYPE_2__*) ;
 int DisconnectL2TPTunnel (TYPE_1__*) ;
 scalar_t__ Endian16 (int) ;
 scalar_t__ Endian32 (int) ;
 int FreeL2TPPacket (TYPE_4__*) ;
 TYPE_5__* GetAVPValue (TYPE_4__*,int ) ;
 TYPE_2__* GetSessionFromId (TYPE_1__*,scalar_t__) ;
 int * GetSessionFromIdAssignedByClient (TYPE_1__*,scalar_t__) ;
 int IsZero (int ,int) ;
 int L2TPV3_CISCO_AVP_PW_TYPE ;
 int L2TPV3_CISCO_AVP_SESSION_ID_LOCAL ;
 int L2TPV3_PW_TYPE_ETHERNET ;
 int L2TP_AVP_TYPE_ASSIGNED_SESSION ;
 int L2TP_AVP_TYPE_ASSIGNED_TUNNEL ;
 int L2TP_AVP_TYPE_V3_CIRCUIT_STATUS ;
 int L2TP_AVP_TYPE_V3_PW_TYPE ;
 int L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL ;
 int L2TP_AVP_TYPE_V3_TUNNEL_ID ;
 int L2TP_AVP_VENDOR_ID_CISCO ;
 scalar_t__ L2TP_MESSAGE_TYPE_CDN ;
 scalar_t__ L2TP_MESSAGE_TYPE_ICCN ;
 int L2TP_MESSAGE_TYPE_ICRP ;
 scalar_t__ L2TP_MESSAGE_TYPE_ICRQ ;
 scalar_t__ L2TP_MESSAGE_TYPE_SCCCN ;
 scalar_t__ L2TP_MESSAGE_TYPE_STOPCCN ;
 TYPE_2__* NewAVP (int ,int,int ,scalar_t__*,int) ;
 TYPE_4__* NewL2TPControlPacket (int ,int) ;
 TYPE_2__* NewL2TPSession (TYPE_3__*,TYPE_1__*,scalar_t__) ;
 scalar_t__ READ_UINT (int ) ;
 scalar_t__ READ_USHORT (int ) ;
 int SendL2TPControlPacket (TYPE_3__*,TYPE_1__*,scalar_t__,TYPE_4__*) ;

void L2TPProcessRecvControlPacket(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_PACKET *p)
{

 if (l2tp == ((void*)0) || t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (p->SessionId == 0)
 {
  if (p->MessageType == L2TP_MESSAGE_TYPE_SCCCN && l2tp->Halt == 0)
  {

   if (t->Established == 0)
   {
    if (t->Disconnecting == 0)
    {
     t->Established = 1;
     t->LastHelloSent = l2tp->Now;
    }
   }
  }

  if (t->Established)
  {
   if (p->MessageType == L2TP_MESSAGE_TYPE_ICRQ && t->WantToDisconnect == 0 && l2tp->Halt == 0)
   {

    L2TP_AVP *a = GetAVPValue(p,
     (t->IsV3 ? L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL : L2TP_AVP_TYPE_ASSIGNED_SESSION));
    if (a != ((void*)0) && a->DataSize == (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)) && IsZero(a->Data, (t->IsV3 ? sizeof(UINT) : sizeof(USHORT))) == 0)
    {
     UINT session_id = (t->IsV3 ? READ_UINT(a->Data) : READ_USHORT(a->Data));


     if (GetSessionFromIdAssignedByClient(t, session_id) == ((void*)0))
     {

      L2TP_SESSION *s = NewL2TPSession(l2tp, t, session_id);

      if (s != ((void*)0))
      {
       L2TP_PACKET *pp;
       USHORT us;
       UINT ui;


       if (t->IsV3)
       {
        s->PseudowireType = L2TPV3_PW_TYPE_ETHERNET;

        a = GetAVPValue(p, L2TP_AVP_TYPE_V3_PW_TYPE);

        if (a != ((void*)0) && a->DataSize == sizeof(USHORT))
        {
         ui = READ_USHORT(a->Data);

         s->PseudowireType = ui;
        }
       }

       Add(t->SessionList, s);
       Debug("L2TP New Session: ID = %u/%u on Tunnel %u/%u\n", s->SessionId1, s->SessionId2,
        t->TunnelId1, t->TunnelId2);


       pp = NewL2TPControlPacket(L2TP_MESSAGE_TYPE_ICRP, s->IsV3);


       if (s->IsV3 == 0)
       {
        us = Endian16(s->SessionId2);
        Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_ASSIGNED_SESSION, 1, 0, &us, sizeof(USHORT)));
       }
       else
       {
        ui = Endian32(s->SessionId2);
        Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, 1, 0, &ui, sizeof(UINT)));

        if (s->IsCiscoV3)
        {
         Add(pp->AvpList, NewAVP(L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, 1, L2TP_AVP_VENDOR_ID_CISCO, &ui, sizeof(UINT)));
        }
       }

       if (s->IsV3)
       {
        if (t->IsYamahaV3 == 0)
        {

         us = Endian16(s->PseudowireType);
         Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_V3_PW_TYPE, 1, 0, &us, sizeof(USHORT)));
        }

        if (s->IsCiscoV3)
        {
         Add(pp->AvpList, NewAVP(L2TPV3_CISCO_AVP_PW_TYPE, 1, L2TP_AVP_VENDOR_ID_CISCO, &us, sizeof(USHORT)));
        }

        if (t->IsYamahaV3)
        {
         us = Endian16(0x0003);
         Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_V3_CIRCUIT_STATUS, 1, 0, &us, sizeof(USHORT)));
        }
       }

       SendL2TPControlPacket(l2tp, t, session_id, pp);

       FreeL2TPPacket(pp);
      }
     }
    }
   }
   else if (p->MessageType == L2TP_MESSAGE_TYPE_STOPCCN)
   {

    L2TP_AVP *a = GetAVPValue(p, (t->IsV3 ? L2TP_AVP_TYPE_V3_TUNNEL_ID : L2TP_AVP_TYPE_ASSIGNED_TUNNEL));
    if (a != ((void*)0) && a->DataSize == (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)))
    {
     UINT ui = (t->IsV3 ? READ_UINT(a->Data) : READ_USHORT(a->Data));

     if (ui == t->TunnelId1)
     {

      DisconnectL2TPTunnel(t);
     }
    }
   }
  }
 }
 else
 {

  L2TP_SESSION *s = GetSessionFromId(t, p->SessionId);

  if (s != ((void*)0))
  {
   if (s->Established == 0)
   {
    if (p->MessageType == L2TP_MESSAGE_TYPE_ICCN)
    {

     if (s->Disconnecting == 0)
     {
      s->Established = 1;
     }
    }
   }
   else
   {
    if (p->MessageType == L2TP_MESSAGE_TYPE_CDN)
    {

     L2TP_AVP *a = GetAVPValue(p,
      (t->IsV3 ? L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL : L2TP_AVP_TYPE_ASSIGNED_SESSION));
     if (a != ((void*)0) && a->DataSize == (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)))
     {
      UINT ui = (t->IsV3 ? READ_UINT(a->Data) : READ_USHORT(a->Data));

      if (ui == s->SessionId1)
      {

       DisconnectL2TPSession(t, s);
      }
     }
    }
   }
  }
  else
  {
   Debug("Session ID %u not found in Tunnel ID %u/%u\n", p->SessionId, t->TunnelId1, t->TunnelId2);
  }
 }
}
