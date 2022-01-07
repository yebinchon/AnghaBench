
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int ip_str ;
typedef int ctoken_hash ;
typedef void* USHORT ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {scalar_t__ SrcPort; int Size; scalar_t__ Type; int Data; int SrcIP; int DestPort; int DstIP; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_25__ {scalar_t__ Status; scalar_t__ YourPort; void* Dns_TranId; scalar_t__ Icmp_Type; int YourIp; scalar_t__ LastSentTick; int Key_Init; } ;
struct TYPE_24__ {int ServerMode; int NoNatTRegister; scalar_t__ Protocol; int SessionList; scalar_t__ NatT_EnableSourceIpValidation; scalar_t__ (* ProcRpcRecv ) (TYPE_2__*,TYPE_1__*) ;int NatT_IP_Safe; } ;
typedef TYPE_2__ RUDP_STACK ;
typedef TYPE_3__ RUDP_SESSION ;
typedef int IP ;


 scalar_t__ Cmp (int ,int ,int) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,TYPE_3__*,char*,scalar_t__) ;
 scalar_t__ ICMP_TYPE_INFORMATION_REPLY ;
 scalar_t__ ICMP_TYPE_INFORMATION_REQUEST ;
 int IPToStr (char*,int,int *) ;
 int Insert (int ,TYPE_3__*) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ RUDPCheckSignOfRecvPacket (TYPE_2__*,TYPE_3__*,int ,int) ;
 int RUDPIsIpInValidateList (TYPE_2__*,int *) ;
 TYPE_3__* RUDPNewSession (int,int *,int ,int *,scalar_t__,int ) ;
 scalar_t__ RUDPProcessBulkRecvPacket (TYPE_2__*,TYPE_3__*,int ,int) ;
 scalar_t__ RUDPProcessRecvPacket (TYPE_2__*,TYPE_3__*,int ,int) ;
 int RUDPProcess_NatT_Recv (TYPE_2__*,TYPE_1__*) ;
 TYPE_3__* RUDPSearchSession (TYPE_2__*,int *,int ,int *,scalar_t__) ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;
 scalar_t__ RUDP_QUOTA_MAX_NUM_SESSIONS ;
 scalar_t__ RUDP_QUOTA_MAX_NUM_SESSIONS_PER_IP ;
 scalar_t__ RUDP_SESSION_STATUS_CONNECT_SENT ;
 scalar_t__ RUDP_SESSION_STATUS_ESTABLISHED ;
 int SHA1_SIZE ;
 scalar_t__ UDP_NAT_T_PORT ;
 int Zero (int *,int) ;
 scalar_t__ g_no_rudp_server ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*) ;

void RUDPRecvProc(RUDP_STACK *r, UDPPACKET *p)
{
 RUDP_SESSION *se = ((void*)0);

 if (r == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (r->ServerMode)
 {
  if (g_no_rudp_server)
  {
   return;
  }
 }

 if (r->ServerMode && r->NoNatTRegister == 0)
 {

  if (p->SrcPort == UDP_NAT_T_PORT && CmpIpAddr(&p->SrcIP, &r->NatT_IP_Safe) == 0)
  {

   RUDPProcess_NatT_Recv(r, p);
   return;
  }
 }

 if (r->ServerMode)
 {
  if (r->ProcRpcRecv != ((void*)0))
  {
   if (r->ProcRpcRecv(r, p))
   {
    return;
   }
  }
 }

 if (r->ServerMode)
 {

  se = RUDPSearchSession(r, &p->DstIP, p->DestPort, &p->SrcIP, p->SrcPort);
 }
 else
 {

  if (LIST_NUM(r->SessionList) >= 1)
  {
   se = LIST_DATA(r->SessionList, 0);
  }
  else
  {
   se = ((void*)0);
  }
 }

 if (p->Size < 20)
 {

  if (r->ServerMode == 0)
  {
   if (se != ((void*)0) && se->Status == RUDP_SESSION_STATUS_CONNECT_SENT)
   {
    if (CmpIpAddr(&se->YourIp, &p->SrcIP) == 0)
    {



     se->YourPort = p->SrcPort;
    }
   }
  }
  return;
 }

 if (se == ((void*)0) && r->ServerMode && p->Size >= 40)
 {



  UINT i;
  for (i = 0; i < LIST_NUM(r->SessionList);i++)
  {
   RUDP_SESSION *s = LIST_DATA(r->SessionList, i);

   if (CmpIpAddr(&s->YourIp, &p->SrcIP) == 0)
   {
    if (RUDPCheckSignOfRecvPacket(r, s, p->Data, p->Size))
    {

     se = s;
     break;
    }
   }
  }
 }

 if (se == ((void*)0))
 {

  if (r->ServerMode)
  {
   if (p->Size < 40)
   {
    bool ok = 1;
    UCHAR ctoken_hash[SHA1_SIZE];

    Zero(ctoken_hash, sizeof(ctoken_hash));


    if (LIST_NUM(r->SessionList) >= RUDP_QUOTA_MAX_NUM_SESSIONS)
    {

     ok = 0;
    }
    else if (r->NatT_EnableSourceIpValidation && RUDPIsIpInValidateList(r, &p->SrcIP) == 0)
    {

     ok = 0;
    }
    else
    {
     UINT i;

     UINT num = 0;

     for (i = 0;i < LIST_NUM(r->SessionList);i++)
     {
      RUDP_SESSION *se = LIST_DATA(r->SessionList, i);

      if (CmpIpAddr(&se->YourIp, &p->SrcIP) == 0)
      {
       num++;
      }
     }

     if (num >= RUDP_QUOTA_MAX_NUM_SESSIONS_PER_IP)
     {

      ok = 0;
     }
    }


    if (ok)
    {
     char ip_str[64];


     se = RUDPNewSession(1, &p->DstIP, p->DestPort, &p->SrcIP, p->SrcPort, p->Data);
     se->Status = RUDP_SESSION_STATUS_ESTABLISHED;
     Insert(r->SessionList, se);

     IPToStr(ip_str, sizeof(ip_str), &p->SrcIP);
     Debug("RUDPNewSession %X %s:%u\n", se, ip_str, p->SrcPort);

     if (r->Protocol == RUDP_PROTOCOL_ICMP)
     {

      se->Icmp_Type = (p->Type == ICMP_TYPE_INFORMATION_REQUEST ? ICMP_TYPE_INFORMATION_REPLY : p->Type);
     }
     else if (r->Protocol == RUDP_PROTOCOL_DNS)
     {

      se->Dns_TranId = (USHORT)p->Type;
     }
    }
   }
  }
 }
 else
 {
  if (p->Size < 40)
  {
   if (r->ServerMode)
   {
    if (Cmp(se->Key_Init, p->Data, SHA1_SIZE) == 0)
    {

     se->LastSentTick = 0;


     Copy(&se->YourIp, &p->SrcIP, sizeof(IP));
     se->YourPort = p->SrcPort;

     if (r->Protocol == RUDP_PROTOCOL_ICMP)
     {

      se->Icmp_Type = (p->Type == ICMP_TYPE_INFORMATION_REQUEST ? ICMP_TYPE_INFORMATION_REPLY : p->Type);
     }
     else if (r->Protocol == RUDP_PROTOCOL_DNS)
     {

      se->Dns_TranId = (USHORT)p->Type;
     }
    }
    else
    {

    }
   }
  }
  else
  {

   if (RUDPProcessRecvPacket(r, se, p->Data, p->Size) || RUDPProcessBulkRecvPacket(r, se, p->Data, p->Size))
   {


    se->YourPort = p->SrcPort;

    if (r->Protocol == RUDP_PROTOCOL_ICMP)
    {

     if (r->ServerMode)
     {
      se->Icmp_Type = (p->Type == ICMP_TYPE_INFORMATION_REQUEST ? ICMP_TYPE_INFORMATION_REPLY : p->Type);
     }
     else
     {
      se->Icmp_Type = (p->Type == ICMP_TYPE_INFORMATION_REPLY ? ICMP_TYPE_INFORMATION_REQUEST : p->Type);
     }
    }
    else if (r->Protocol == RUDP_PROTOCOL_DNS)
    {
     if (r->ServerMode)
     {

      se->Dns_TranId = (USHORT)p->Type;
     }
    }
   }
  }
 }
}
