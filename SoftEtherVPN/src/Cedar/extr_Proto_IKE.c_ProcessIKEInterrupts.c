
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_28__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int data ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_36__ {scalar_t__ CurrentExpiresSoftTick_CtoS; scalar_t__ CurrentExpiresSoftTick_StoC; scalar_t__ CurrentNumHealtyIPsecSA_CtoS; scalar_t__ CurrentNumHealtyIPsecSA_StoC; scalar_t__ ServerPort; int StartQuickModeAsSoon; scalar_t__ LastQuickModeStartTick; scalar_t__ NeedQmBeginTick; scalar_t__ LastCommTick; scalar_t__ NextKeepAliveSendTick; scalar_t__ NextDpdSendTick; int DpdSeqNo; TYPE_5__* CurrentIkeSa; int ClientPort; int ClientIP; int ServerIP; int * EtherIP; int * L2TP; TYPE_3__* CurrentIpSecSaSend; TYPE_3__* CurrentIpSecSaRecv; scalar_t__ Deleting; scalar_t__ CurrentNumEstablishedIPsecSA_CtoS; scalar_t__ CurrentNumEstablishedIPsecSA_StoC; } ;
struct TYPE_32__ {scalar_t__ DpdRfc3706; } ;
struct TYPE_35__ {scalar_t__ NextSendTick; scalar_t__ NumResends; int Established; scalar_t__ LastCommTick; int ResponderCookie; int InitiatorCookie; TYPE_2__ Caps; scalar_t__ Deleting; TYPE_6__* IkeClient; TYPE_28__* SendBuffer; } ;
struct TYPE_34__ {scalar_t__ Now; int StateHasChanged; int ThreadList; int Interrupts; int ClientList; int IPsecSaList; int IkeSaList; } ;
struct TYPE_33__ {scalar_t__ NextSendTick; scalar_t__ NumResends; int Established; int Deleting; scalar_t__ ExpiresSoftTick; scalar_t__ LastCommTick; TYPE_1__* PairIPsecSa; scalar_t__ ServerToClient; TYPE_6__* IkeClient; TYPE_28__* SendBuffer; } ;
struct TYPE_31__ {int* Buf; int Size; } ;
struct TYPE_30__ {scalar_t__ LastCommTick; } ;
typedef TYPE_3__ IPSECSA ;
typedef TYPE_4__ IKE_SERVER ;
typedef TYPE_5__ IKE_SA ;
typedef TYPE_6__ IKE_CLIENT ;


 int AddInterrupt (int ,scalar_t__) ;
 int Clone (int*,int) ;
 int Debug (char*,TYPE_6__*) ;
 int EtherIPProcInterrupts (int *) ;
 int FreeBuf (TYPE_28__*) ;
 scalar_t__ IKE_INTERVAL_DPD_KEEPALIVE ;
 scalar_t__ IKE_INTERVAL_UDP_KEEPALIVE ;
 scalar_t__ IKE_QUICKMODE_FAILED_TIMEOUT ;
 scalar_t__ IKE_QUICKMODE_START_INTERVAL ;
 scalar_t__ IKE_SA_RESEND_INTERVAL ;
 scalar_t__ IKE_TIMEOUT_FOR_IKE_CLIENT ;
 scalar_t__ IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED ;
 int IKE_UDP_KEEPALIVE ;
 int IKE_UDP_TYPE_ISAKMP ;
 scalar_t__ IPSEC_PORT_IPSEC_ESP_UDP ;
 int IPsecIkeClientManageEtherIPServer (TYPE_4__*,TYPE_6__*) ;
 int IPsecIkeClientManageL2TPServer (TYPE_4__*,TYPE_6__*) ;
 int IPsecIkeClientSendEtherIPPackets (TYPE_4__*,TYPE_6__*,int *) ;
 int IPsecIkeClientSendL2TPPackets (TYPE_4__*,TYPE_6__*,int *) ;
 int IkeNewNoticeDpdPayload (int,int ,int ,int ) ;
 int IkeSendUdpPacket (TYPE_4__*,int ,int *,scalar_t__,int *,int ,int ,int) ;
 int L2TPProcessInterrupts (int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 void* MAX (scalar_t__,scalar_t__) ;
 int MaintainThreadList (int ) ;
 int MarkIPsecSaAsDeleted (TYPE_4__*,TYPE_3__*) ;
 int MarkIkeClientAsDeleted (TYPE_4__*,TYPE_6__*) ;
 int MarkIkeSaAsDeleted (TYPE_4__*,TYPE_5__*) ;
 int PurgeDeletingSAsAndClients (TYPE_4__*) ;
 int SendInformationalExchangePacket (TYPE_4__*,TYPE_6__*,int ) ;
 int StartQuickMode (TYPE_4__*,TYPE_6__*) ;
 int WHERE ;
 int Zero (int*,int) ;

void ProcessIKEInterrupts(IKE_SERVER *ike)
{
 UINT i;

 if (ike == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(ike->ClientList);i++)
 {
  IKE_CLIENT *c = LIST_DATA(ike->ClientList, i);

  c->CurrentExpiresSoftTick_CtoS = 0;
  c->CurrentExpiresSoftTick_StoC = 0;
  c->CurrentNumEstablishedIPsecSA_CtoS = 0;
  c->CurrentNumEstablishedIPsecSA_StoC = 0;
  c->CurrentNumHealtyIPsecSA_CtoS = 0;
  c->CurrentNumHealtyIPsecSA_StoC = 0;
 }


 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

  if (sa->SendBuffer != ((void*)0))
  {
   if (ike->Now >= sa->NextSendTick)
   {
    IKE_CLIENT *c = sa->IkeClient;

    IkeSendUdpPacket(ike, IKE_UDP_TYPE_ISAKMP, &c->ServerIP, c->ServerPort, &c->ClientIP, c->ClientPort,
     Clone(sa->SendBuffer->Buf, sa->SendBuffer->Size), sa->SendBuffer->Size);

    sa->NextSendTick += (UINT64)(IKE_SA_RESEND_INTERVAL);

    AddInterrupt(ike->Interrupts, sa->NextSendTick);

    if (sa->NumResends != 0)
    {
     sa->NumResends--;
     if (sa->NumResends == 0)
     {
      sa->NextSendTick = 0;
      FreeBuf(sa->SendBuffer);
      sa->SendBuffer = ((void*)0);
     }
    }
   }
  }


  if (sa->IkeClient == ((void*)0) || (sa->IkeClient->CurrentIkeSa != sa))
  {

   if (sa->Established == 0)
   {

    if ((sa->LastCommTick + (UINT64)IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED) <= ike->Now)
    {
     WHERE;
     MarkIkeSaAsDeleted(ike, sa);
    }
   }
   else
   {

    if ((sa->LastCommTick + (UINT64)IKE_TIMEOUT_FOR_IKE_CLIENT) <= ike->Now)
    {
     WHERE;
     MarkIkeSaAsDeleted(ike, sa);
    }
   }
  }
 }


 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);
  IKE_CLIENT *c = sa->IkeClient;

  if (sa->SendBuffer != ((void*)0))
  {
   if (ike->Now >= sa->NextSendTick)
   {
    IKE_CLIENT *c = sa->IkeClient;

    IkeSendUdpPacket(ike, IKE_UDP_TYPE_ISAKMP, &c->ServerIP, c->ServerPort, &c->ClientIP, c->ClientPort,
     Clone(sa->SendBuffer->Buf, sa->SendBuffer->Size), sa->SendBuffer->Size);

    sa->NextSendTick += (UINT64)(IKE_SA_RESEND_INTERVAL);

    AddInterrupt(ike->Interrupts, sa->NextSendTick);

    if (sa->NumResends != 0)
    {
     sa->NumResends--;

     if (sa->NumResends == 0)
     {
      sa->NextSendTick = 0;
      FreeBuf(sa->SendBuffer);
      sa->SendBuffer = ((void*)0);
     }
    }
   }
  }

  if (sa->Established && sa->Deleting == 0 && c != ((void*)0))
  {

   if (sa->ServerToClient)
   {
    c->CurrentExpiresSoftTick_StoC = MAX(c->CurrentExpiresSoftTick_StoC, sa->ExpiresSoftTick);
    c->CurrentNumEstablishedIPsecSA_StoC++;

    if (sa->ExpiresSoftTick == 0 || sa->ExpiresSoftTick > ike->Now)
    {
     c->CurrentNumHealtyIPsecSA_StoC++;
    }
   }
   else
   {
    c->CurrentExpiresSoftTick_CtoS = MAX(c->CurrentExpiresSoftTick_CtoS, sa->ExpiresSoftTick);
    c->CurrentNumEstablishedIPsecSA_CtoS++;

    if (sa->ExpiresSoftTick == 0 || sa->ExpiresSoftTick > ike->Now)
    {
     c->CurrentNumHealtyIPsecSA_CtoS++;
    }
   }
  }


  if (sa->IkeClient == ((void*)0) || (sa->IkeClient->CurrentIpSecSaRecv != sa && sa->IkeClient->CurrentIpSecSaSend != sa))
  {

   UINT64 last_comm_tick = sa->LastCommTick;

   if (sa->ServerToClient && sa->PairIPsecSa != ((void*)0))
   {
    last_comm_tick = sa->PairIPsecSa->LastCommTick;
   }

   if (sa->Established == 0)
   {

    if ((last_comm_tick + (UINT64)IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED) <= ike->Now)
    {
     WHERE;
     MarkIPsecSaAsDeleted(ike, sa);
    }
   }
   else
   {

    if ((last_comm_tick + (UINT64)IKE_TIMEOUT_FOR_IKE_CLIENT) <= ike->Now)
    {
     WHERE;
     MarkIPsecSaAsDeleted(ike, sa);
    }
   }
  }
 }


 for (i = 0;i < LIST_NUM(ike->ClientList);i++)
 {
  IKE_CLIENT *c = LIST_DATA(ike->ClientList, i);
  UINT64 tick;
  UCHAR data[1];
  bool need_qm = 0;
  bool need_qm_hard = 0;
  UINT64 qm_soft_tick = 0;


  if (c->CurrentExpiresSoftTick_StoC != 0 && ike->Now >= c->CurrentExpiresSoftTick_StoC)
  {
   need_qm = 1;
   qm_soft_tick = MAX(qm_soft_tick, c->CurrentExpiresSoftTick_StoC);
  }

  if (c->CurrentExpiresSoftTick_CtoS != 0 && ike->Now >= c->CurrentExpiresSoftTick_CtoS)
  {
   need_qm = 1;
   qm_soft_tick = MAX(qm_soft_tick, c->CurrentExpiresSoftTick_StoC);
  }

  if (c->CurrentNumHealtyIPsecSA_CtoS == 0 || c->CurrentNumHealtyIPsecSA_StoC == 0)
  {
   need_qm = 1;
   need_qm_hard = 1;
  }

  if (c->StartQuickModeAsSoon)
  {
   need_qm = 1;
   need_qm_hard = 1;
  }

  if (c->Deleting || c->CurrentIkeSa == ((void*)0) || c->CurrentIkeSa->Deleting)
  {
   need_qm = 0;
   need_qm_hard = 1;
  }

  if (need_qm)
  {
   if (c->StartQuickModeAsSoon || ((c->LastQuickModeStartTick + (UINT64)IKE_QUICKMODE_START_INTERVAL) <= ike->Now))
   {

    Debug("IKE_CLIENT 0x%X: Begin QuickMode\n", c);
    c->StartQuickModeAsSoon = 0;
    c->LastQuickModeStartTick = ike->Now;

    AddInterrupt(ike->Interrupts, c->LastQuickModeStartTick + (UINT64)IKE_QUICKMODE_START_INTERVAL);

    StartQuickMode(ike, c);
   }
  }

  if (need_qm_hard)
  {
   if (c->NeedQmBeginTick == 0)
   {
    c->NeedQmBeginTick = ike->Now;
   }
  }
  else
  {
   c->NeedQmBeginTick = 0;
  }

  if (((c->LastCommTick + (UINT64)IKE_TIMEOUT_FOR_IKE_CLIENT) <= ike->Now) ||
   ((c->CurrentIkeSa == ((void*)0) && c->CurrentIpSecSaRecv == ((void*)0) && c->CurrentIpSecSaSend == ((void*)0)) && (c->LastCommTick + (UINT64)IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED) <= ike->Now) ||
   (c->NeedQmBeginTick != 0 && ((c->NeedQmBeginTick + (UINT64)IKE_QUICKMODE_FAILED_TIMEOUT) <= ike->Now)))
  {

   WHERE;
   MarkIkeClientAsDeleted(ike, c);
  }


  if (c->L2TP != ((void*)0))
  {
   IPsecIkeClientManageL2TPServer(ike, c);


   L2TPProcessInterrupts(c->L2TP);


   IPsecIkeClientSendL2TPPackets(ike, c, c->L2TP);
  }


  if (c->EtherIP != ((void*)0))
  {
   IPsecIkeClientManageEtherIPServer(ike, c);


   EtherIPProcInterrupts(c->EtherIP);


   IPsecIkeClientSendEtherIPPackets(ike, c, c->EtherIP);
  }


  tick = MAX(c->LastCommTick + (UINT64)IKE_INTERVAL_UDP_KEEPALIVE, c->NextKeepAliveSendTick);

  if (tick <= ike->Now && c->ServerPort == IPSEC_PORT_IPSEC_ESP_UDP)
  {
   c->NextKeepAliveSendTick = ike->Now + (UINT64)IKE_INTERVAL_UDP_KEEPALIVE;

   AddInterrupt(ike->Interrupts, c->NextKeepAliveSendTick);

   Zero(data, sizeof(data));
   data[0] = 0xff;

   IkeSendUdpPacket(ike, IKE_UDP_KEEPALIVE, &c->ServerIP, c->ServerPort, &c->ClientIP, c->ClientPort, Clone(data, sizeof(data)), sizeof(data));
  }


  if (c->NextDpdSendTick == 0 || c->NextDpdSendTick <= ike->Now)
  {
   if (c->CurrentIkeSa != ((void*)0) && c->CurrentIkeSa->Established)
   {
    if (c->CurrentIkeSa->Caps.DpdRfc3706)
    {
     c->NextDpdSendTick = ike->Now + (UINT64)IKE_INTERVAL_DPD_KEEPALIVE;

     AddInterrupt(ike->Interrupts, c->NextDpdSendTick);

     SendInformationalExchangePacket(ike, c,
      IkeNewNoticeDpdPayload(0, c->CurrentIkeSa->InitiatorCookie, c->CurrentIkeSa->ResponderCookie,
      c->DpdSeqNo++));
    }
   }
  }
 }

 do
 {
  ike->StateHasChanged = 0;


  PurgeDeletingSAsAndClients(ike);
 }
 while (ike->StateHasChanged);


 MaintainThreadList(ike->ThreadList);
}
