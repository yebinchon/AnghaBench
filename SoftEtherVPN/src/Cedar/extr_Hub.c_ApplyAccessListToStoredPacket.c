
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int redirect_url ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
struct TYPE_31__ {int AccessList; TYPE_1__* Option; } ;
struct TYPE_27__ {TYPE_4__* IPv4Header; } ;
struct TYPE_25__ {TYPE_6__* TCPHeader; } ;
struct TYPE_30__ {scalar_t__ TypeL3; int AccessChecked; scalar_t__ TypeL4; scalar_t__ PayloadSize; TYPE_5__ L3; TYPE_3__ L4; int Loss; int Jitter; int Delay; TYPE_2__* MacHeader; } ;
struct TYPE_29__ {int FirstTimeHttpRedirect; scalar_t__ FirstTimeHttpAccessCheckIp; scalar_t__* FirstTimeHttpRedirectUrl; scalar_t__ NormalClient; } ;
struct TYPE_28__ {int Flag; int DstPort; } ;
struct TYPE_26__ {int Protocol; scalar_t__ DstIP; } ;
struct TYPE_24__ {int Protocol; } ;
struct TYPE_23__ {scalar_t__ FilterBPDU; scalar_t__ FilterNonIP; scalar_t__ FilterIPv6; scalar_t__ FilterIPv4; scalar_t__ FilterOSPF; scalar_t__ FilterPPPoE; } ;
struct TYPE_22__ {scalar_t__ DestUsernameHash; scalar_t__* RedirectUrl; int Loss; int Jitter; int Delay; scalar_t__ Discard; } ;
typedef TYPE_6__ TCP_HEADER ;
typedef TYPE_7__ SESSION ;
typedef TYPE_8__ PKT ;
typedef TYPE_9__ HUB ;
typedef TYPE_10__ ACCESS ;


 int Endian16 (int) ;
 int ForceRedirectToUrl (TYPE_9__*,TYPE_7__*,TYPE_8__*,char*) ;
 int IsEmptyStr (scalar_t__*) ;
 scalar_t__ IsPacketMaskedByAccessList (TYPE_7__*,TYPE_8__*,TYPE_10__*,int ,int ,int *) ;
 int IsTcpPacketNcsiHttpAccess (TYPE_8__*) ;
 scalar_t__ L3_BPDU ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L3_IPV6 ;
 scalar_t__ L4_TCP ;
 TYPE_10__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_REDIRECT_URL_LEN ;
 int StrCpy (char*,int,scalar_t__*) ;
 int TCP_ACK ;
 int TCP_RST ;
 int TCP_SYN ;
 int TCP_URG ;
 int UnlockList (int ) ;

bool ApplyAccessListToStoredPacket(HUB *hub, SESSION *s, PKT *p)
{
 UINT i;
 bool pass = 1;
 bool use_redirect_url = 0;
 char redirect_url[MAX_REDIRECT_URL_LEN + 1];

 if (hub == ((void*)0) || s == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 if (hub->Option != ((void*)0) && hub->Option->FilterPPPoE)
 {
  if (p->MacHeader != ((void*)0))
  {
   USHORT proto = Endian16(p->MacHeader->Protocol);
   if (proto == 0x8863 || proto == 0x8864)
   {

    return 0;
   }
  }
 }

 if (hub->Option != ((void*)0) && hub->Option->FilterOSPF)
 {
  if (p->TypeL3 == L3_IPV4)
  {
   if (p->L3.IPv4Header != ((void*)0))
   {
    if (p->L3.IPv4Header->Protocol == 89)
    {

     return 0;
    }
   }
  }
 }

 if (hub->Option != ((void*)0) && hub->Option->FilterIPv4)
 {
  if (p->MacHeader != ((void*)0))
  {
   USHORT proto = Endian16(p->MacHeader->Protocol);
   if (proto == 0x0800 || proto == 0x0806)
   {

    return 0;
   }
  }
 }

 if (hub->Option != ((void*)0) && hub->Option->FilterIPv6)
 {
  if (p->MacHeader != ((void*)0))
  {
   USHORT proto = Endian16(p->MacHeader->Protocol);
   if (proto == 0x86dd)
   {

    return 0;
   }
  }
 }

 if (hub->Option != ((void*)0) && hub->Option->FilterNonIP)
 {
  if (p->MacHeader != ((void*)0))
  {
   USHORT proto = Endian16(p->MacHeader->Protocol);
   if (!(proto == 0x86dd || proto == 0x0800 || proto == 0x0806))
   {

    return 0;
   }
  }
 }

 if (hub->Option != ((void*)0) && hub->Option->FilterBPDU)
 {
  if (p->MacHeader != ((void*)0))
  {
   if (p->TypeL3 == L3_BPDU)
   {

    return 0;
   }
  }
 }

 LockList(hub->AccessList);
 {
  for (i = 0;i < LIST_NUM(hub->AccessList);i++)
  {
   ACCESS *a = LIST_DATA(hub->AccessList, i);

   if (a->DestUsernameHash != 0)
   {

    break;
   }

   if (IsPacketMaskedByAccessList(s, p, a, 0, 0, ((void*)0)))
   {

    pass = a->Discard ? 0 : 1;


    p->AccessChecked = 1;


    p->Delay = a->Delay;
    p->Jitter = a->Jitter;
    p->Loss = a->Loss;

    if (a->RedirectUrl[0] != 0)
    {

     if ((p->TypeL3 == L3_IPV4 || p->TypeL3 == L3_IPV6) &&
      p->TypeL4 == L4_TCP)
     {
      TCP_HEADER *tcp = p->L4.TCPHeader;


      if (tcp != ((void*)0))
      {
       if (tcp->Flag & TCP_ACK)
       {
        if ((tcp->Flag & TCP_SYN) == 0 &&
         (tcp->Flag & TCP_RST) == 0 &&
         (tcp->Flag & TCP_URG) == 0)
        {
         if (p->PayloadSize != 0)
         {

          use_redirect_url = 1;
          StrCpy(redirect_url, sizeof(redirect_url), a->RedirectUrl);
         }
        }
       }
      }
     }
    }


    break;
   }
  }
 }
 UnlockList(hub->AccessList);

 if (pass)
 {
  if (s->FirstTimeHttpRedirect && s->FirstTimeHttpAccessCheckIp != 0)
  {
   if ((p->TypeL3 == L3_IPV4 || p->TypeL3 == L3_IPV6) &&
    p->TypeL4 == L4_TCP)
   {
    TCP_HEADER *tcp = p->L4.TCPHeader;


    if (tcp != ((void*)0))
    {
     if (tcp->DstPort == Endian16(80))
     {
      if (p->L3.IPv4Header->DstIP == s->FirstTimeHttpAccessCheckIp)
      {
       s->FirstTimeHttpRedirect = 0;
      }
      else if (tcp->Flag & TCP_ACK)
      {
       if ((tcp->Flag & TCP_SYN) == 0 &&
        (tcp->Flag & TCP_RST) == 0 &&
        (tcp->Flag & TCP_URG) == 0)
       {
        if (p->PayloadSize != 0)
        {
         if (IsTcpPacketNcsiHttpAccess(p) == 0)
         {




          if (IsEmptyStr(s->FirstTimeHttpRedirectUrl) == 0)
          {
           use_redirect_url = 1;
           StrCpy(redirect_url, sizeof(redirect_url), s->FirstTimeHttpRedirectUrl);
          }
         }
        }
       }
      }
     }
    }
   }
  }
 }

 if (use_redirect_url)
 {
  if (s->NormalClient)
  {


   ForceRedirectToUrl(hub, s, p, redirect_url);
  }
  else
  {


  }

  pass = 0;
 }

 return pass;
}
