
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_65__ TYPE_9__ ;
typedef struct TYPE_64__ TYPE_8__ ;
typedef struct TYPE_63__ TYPE_7__ ;
typedef struct TYPE_62__ TYPE_6__ ;
typedef struct TYPE_61__ TYPE_5__ ;
typedef struct TYPE_60__ TYPE_4__ ;
typedef struct TYPE_59__ TYPE_43__ ;
typedef struct TYPE_58__ TYPE_40__ ;
typedef struct TYPE_57__ TYPE_3__ ;
typedef struct TYPE_56__ TYPE_2__ ;
typedef struct TYPE_55__ TYPE_1__ ;
typedef struct TYPE_54__ TYPE_17__ ;
typedef struct TYPE_53__ TYPE_16__ ;
typedef struct TYPE_52__ TYPE_15__ ;
typedef struct TYPE_51__ TYPE_14__ ;
typedef struct TYPE_50__ TYPE_13__ ;
typedef struct TYPE_49__ TYPE_12__ ;
typedef struct TYPE_48__ TYPE_11__ ;
typedef struct TYPE_47__ TYPE_10__ ;


typedef int tpid ;
typedef int src_mac_dummy ;
typedef int dst_mac_dummy ;
typedef int USHORT ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_48__ {int Size; int DstIP; int SrcIP; scalar_t__ DestPort; scalar_t__ SrcPort; scalar_t__ Data; } ;
typedef TYPE_11__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_64__ {scalar_t__ EtherIP_IPsec; scalar_t__ L2TP_IPsec; } ;
struct TYPE_65__ {TYPE_8__ Services; } ;
struct TYPE_63__ {int IsFragment; int Protocol; int* Payload; int PayloadSize; int * FragmentHeader; TYPE_6__* IPv6Header; } ;
struct TYPE_61__ {int Value; } ;
struct TYPE_60__ {int Value; } ;
struct TYPE_62__ {TYPE_5__ SrcAddress; TYPE_4__ DestAddress; } ;
struct TYPE_59__ {int Protocol; int SrcIP; int DstIP; } ;
struct TYPE_58__ {int HashSize; } ;
struct TYPE_57__ {TYPE_43__* IPv4Header; } ;
struct TYPE_56__ {int BlockSize; } ;
struct TYPE_55__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; } ;
struct TYPE_54__ {int* Buf; int Size; } ;
struct TYPE_53__ {int StartQuickModeAsSoon; int LastCommTick; TYPE_13__* CurrentIpSecSaSend; TYPE_13__* CurrentIpSecSaRecv; int TunnelModeClientIP; int TunnelModeServerIP; TYPE_1__* CurrentIkeSa; scalar_t__ ServerPort; scalar_t__ ClientPort; int ServerIP; int ClientIP; } ;
struct TYPE_52__ {int Iv; int Key; } ;
struct TYPE_51__ {int Now; TYPE_9__* IPsec; int ClientList; } ;
struct TYPE_47__ {scalar_t__ CapsuleMode; scalar_t__ LifeKilobytes; TYPE_40__* Hash; TYPE_2__* Crypto; } ;
struct TYPE_50__ {int TotalSize; int StartQM_FlagSet; TYPE_10__ TransformSetting; int LastCommTick; struct TYPE_50__* PairIPsecSa; int CryptoKey; int HashKey; TYPE_16__* IkeClient; } ;
struct TYPE_49__ {int TypeL3; int* IPv4PayloadData; int IPv4PayloadSize; TYPE_7__ IPv6HeaderPacketInfo; TYPE_3__ L3; } ;
typedef TYPE_12__ PKT ;
typedef TYPE_13__ IPSECSA ;
typedef int IP ;
typedef TYPE_14__ IKE_SERVER ;
typedef TYPE_15__ IKE_CRYPTO_PARAM ;
typedef TYPE_16__ IKE_CLIENT ;
typedef TYPE_17__ BUF ;


 scalar_t__ Cmp (int*,int*,int) ;
 int Copy (int *,int*,int) ;
 int Endian16 (int ) ;
 int FreeBuf (TYPE_17__*) ;
 int FreePacket (TYPE_12__*) ;
 int GetIpHeaderSize (int*,int) ;
 int IKE_ESP_HASH_SIZE ;
 int IKE_MAX_HASH_SIZE ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TRANSPORT_1 ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TUNNEL_1 ;
 scalar_t__ IKE_P2_CAPSULE_TRANSPORT ;
 scalar_t__ IKE_P2_CAPSULE_TUNNEL ;
 int IKE_PROTOCOL_ID_IPV4 ;
 int IKE_PROTOCOL_ID_IPV6 ;
 int IPSEC_IP_PROTO_ETHERIP ;
 int IPSEC_IP_PROTO_L2TPV3 ;
 scalar_t__ IPSEC_PORT_IPSEC_ESP_RAW ;
 scalar_t__ IPSEC_PORT_IPSEC_ESP_UDP ;
 scalar_t__ IPSEC_PORT_IPSEC_ISAKMP ;
 int IPSEC_PORT_L2TP ;
 int IPV4_GET_FLAGS (TYPE_43__*) ;
 int IPV4_GET_OFFSET (TYPE_43__*) ;
 int IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS ;
 int IPV6_GET_FLAGS (int *) ;
 int IP_PROTO_UDP ;
 int IPsecIkeSendUdpForDebug (int ,int,int*,int) ;
 TYPE_17__* IkeDecrypt (int*,int,TYPE_15__*) ;
 int IkeHMac (TYPE_40__*,int*,int ,int ,int*,int) ;
 int IkeNewNoticeErrorInvalidSpiPayload (int) ;
 scalar_t__ IsIP4 (int*) ;
 int IsIPsecSaTunnelMode (TYPE_13__*) ;


 int MAC_PROTO_IPV4 ;
 int MAC_PROTO_IPV6 ;
 TYPE_17__* NewBuf () ;
 TYPE_12__* ParsePacket (int*,int) ;
 int ProcIPsecEtherIPPacketRecv (TYPE_14__*,TYPE_16__*,int*,int,int) ;
 int ProcIPsecUdpPacketRecv (TYPE_14__*,TYPE_16__*,int*,int) ;
 int ProcL2TPv3PacketRecv (TYPE_14__*,TYPE_16__*,int*,int,int) ;
 int READ_UINT (int*) ;
 scalar_t__ Rand64 () ;
 TYPE_16__* Search (int ,TYPE_16__*) ;
 TYPE_13__* SearchClientToServerIPsecSaBySpi (TYPE_14__*,int) ;
 int SendDeleteIPsecSaPacket (TYPE_14__*,TYPE_16__*,int) ;
 int SendInformationalExchangePacketEx (TYPE_14__*,TYPE_16__*,int ,int,scalar_t__,scalar_t__) ;
 int SetIP6 (int *,int ) ;
 int SetIkeClientEndpoint (TYPE_14__*,TYPE_16__*,int*,scalar_t__,int*,scalar_t__) ;
 int UINTToIP (int *,int ) ;
 int WriteBuf (TYPE_17__*,int*,int) ;

void ProcIPsecEspPacketRecv(IKE_SERVER *ike, UDPPACKET *p)
{
 UCHAR *src;
 UINT src_size;
 UINT spi;
 UINT seq;
 IPSECSA *ipsec_sa;
 IKE_CLIENT *c;
 UINT block_size;
 UINT hash_size;
 bool update_status = 0;
 UCHAR *iv;
 UCHAR *hash;
 UCHAR *encrypted_payload_data;
 UINT size_of_payload_data;
 IKE_CRYPTO_PARAM cp;
 BUF *dec;
 UCHAR calced_hash[IKE_MAX_HASH_SIZE];
 bool is_tunnel_mode = 0;

 if (ike == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 src = (UCHAR *)p->Data;
 src_size = p->Size;

 if (p->DestPort == IPSEC_PORT_IPSEC_ESP_RAW)
 {
  if (IsIP4(&p->DstIP))
  {

   UINT ip_header_size = GetIpHeaderSize(src, src_size);

   src += ip_header_size;
   src_size -= ip_header_size;
  }
 }


 if (src_size < sizeof(UINT))
 {
  return;
 }

 spi = READ_UINT(src + 0);
 if (spi == 0)
 {
  return;
 }


 if (src_size < (sizeof(UINT) * 2))
 {
  return;
 }
 seq = READ_UINT(src + sizeof(UINT));


 ipsec_sa = SearchClientToServerIPsecSaBySpi(ike, spi);
 if (ipsec_sa == ((void*)0))
 {

  UINT64 init_cookie = Rand64();
  UINT64 resp_cookie = 0;
  IKE_CLIENT *c = ((void*)0);
  IKE_CLIENT t;


  Copy(&t.ClientIP, &p->SrcIP, sizeof(IP));
  t.ClientPort = p->SrcPort;
  Copy(&t.ServerIP, &p->DstIP, sizeof(IP));
  t.ServerPort = p->DestPort;
  t.CurrentIkeSa = ((void*)0);

  if (p->DestPort == IPSEC_PORT_IPSEC_ESP_RAW)
  {
   t.ClientPort = t.ServerPort = IPSEC_PORT_IPSEC_ISAKMP;
  }

  c = Search(ike->ClientList, &t);

  if (c != ((void*)0) && c->CurrentIkeSa != ((void*)0))
  {
   init_cookie = c->CurrentIkeSa->InitiatorCookie;
   resp_cookie = c->CurrentIkeSa->ResponderCookie;
  }

  SendInformationalExchangePacketEx(ike, (c == ((void*)0) ? &t : c), IkeNewNoticeErrorInvalidSpiPayload(spi), 0,
   init_cookie, resp_cookie);

  SendDeleteIPsecSaPacket(ike, (c == ((void*)0) ? &t : c), spi);
  return;
 }

 is_tunnel_mode = IsIPsecSaTunnelMode(ipsec_sa);

 c = ipsec_sa->IkeClient;
 if (c == ((void*)0))
 {
  return;
 }

 block_size = ipsec_sa->TransformSetting.Crypto->BlockSize;
 hash_size = IKE_ESP_HASH_SIZE;


 if (src_size < (sizeof(UINT) * 2 + block_size + hash_size + block_size))
 {
  return;
 }
 iv = src + sizeof(UINT) * 2;


 hash = src + src_size - hash_size;


 IkeHMac(ipsec_sa->TransformSetting.Hash, calced_hash, ipsec_sa->HashKey,
  ipsec_sa->TransformSetting.Hash->HashSize, src, src_size - hash_size);

 if (Cmp(calced_hash, hash, hash_size) != 0)
 {

  return;
 }


 encrypted_payload_data = src + sizeof(UINT) * 2 + block_size;
 size_of_payload_data = src_size - hash_size - block_size - sizeof(UINT) * 2;
 if (size_of_payload_data == 0 || (size_of_payload_data % block_size) != 0)
 {

  return;
 }


 cp.Key = ipsec_sa->CryptoKey;
 Copy(&cp.Iv, iv, block_size);

 dec = IkeDecrypt(encrypted_payload_data, size_of_payload_data, &cp);
 if (dec != ((void*)0))
 {
  UCHAR *dec_data = dec->Buf;
  UINT dec_size = dec->Size;
  UCHAR size_of_padding = dec_data[dec_size - 2];
  UCHAR next_header = dec_data[dec_size - 1];
  if ((dec_size - 2) >= size_of_padding)
  {
   UINT orig_size = dec_size - 2 - size_of_padding;

   ipsec_sa->TotalSize += dec_size;

   if (is_tunnel_mode)
   {

    if (next_header == IKE_PROTOCOL_ID_IPV4 || next_header == IKE_PROTOCOL_ID_IPV6)
    {

     BUF *b = NewBuf();
     static UCHAR src_mac_dummy[6] = {0, 0, 0, 0, 0, 0, };
     static UCHAR dst_mac_dummy[6] = {0, 0, 0, 0, 0, 0, };
     USHORT tpid = Endian16(next_header == IKE_PROTOCOL_ID_IPV4 ? MAC_PROTO_IPV4 : MAC_PROTO_IPV6);
     PKT *pkt;

     WriteBuf(b, src_mac_dummy, sizeof(src_mac_dummy));
     WriteBuf(b, dst_mac_dummy, sizeof(dst_mac_dummy));
     WriteBuf(b, &tpid, sizeof(tpid));

     WriteBuf(b, dec_data, dec_size);


     pkt = ParsePacket(b->Buf, b->Size);





     if (pkt == ((void*)0))
     {

      dec_data = ((void*)0);
      dec_size = 0;
     }
     else
     {

      switch (pkt->TypeL3)
      {
      case 129:

       UINTToIP(&c->TunnelModeServerIP, pkt->L3.IPv4Header->DstIP);
       UINTToIP(&c->TunnelModeClientIP, pkt->L3.IPv4Header->SrcIP);

       if (IPV4_GET_OFFSET(pkt->L3.IPv4Header) == 0)
       {
        if ((IPV4_GET_FLAGS(pkt->L3.IPv4Header) & 0x01) == 0)
        {
         if (pkt->L3.IPv4Header->Protocol == IPSEC_IP_PROTO_ETHERIP)
         {

          if (ike->IPsec->Services.EtherIP_IPsec)
          {

           ProcIPsecEtherIPPacketRecv(ike, c, pkt->IPv4PayloadData, pkt->IPv4PayloadSize, 1);
          }
         }
         else if (pkt->L3.IPv4Header->Protocol == IPSEC_IP_PROTO_L2TPV3)
         {

          if (ike->IPsec->Services.EtherIP_IPsec)
          {

           ProcL2TPv3PacketRecv(ike, c, pkt->IPv4PayloadData, pkt->IPv4PayloadSize, 1);
          }
         }
        }
       }
       break;

      case 128:

       SetIP6(&c->TunnelModeServerIP, pkt->IPv6HeaderPacketInfo.IPv6Header->DestAddress.Value);
       SetIP6(&c->TunnelModeClientIP, pkt->IPv6HeaderPacketInfo.IPv6Header->SrcAddress.Value);

       if (pkt->IPv6HeaderPacketInfo.IsFragment == 0)
       {
        if (pkt->IPv6HeaderPacketInfo.FragmentHeader == ((void*)0) || (IPV6_GET_FLAGS(pkt->IPv6HeaderPacketInfo.FragmentHeader) & IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS) == 0)
        {
         if (pkt->IPv6HeaderPacketInfo.Protocol == IPSEC_IP_PROTO_ETHERIP)
         {

          if (ike->IPsec->Services.EtherIP_IPsec)
          {

           ProcIPsecEtherIPPacketRecv(ike, c, pkt->IPv6HeaderPacketInfo.Payload, pkt->IPv6HeaderPacketInfo.PayloadSize, 1);
          }
         }
         else if (pkt->IPv6HeaderPacketInfo.Protocol == IPSEC_IP_PROTO_L2TPV3)
         {

          if (ike->IPsec->Services.EtherIP_IPsec)
          {

           ProcL2TPv3PacketRecv(ike, c, pkt->IPv6HeaderPacketInfo.Payload, pkt->IPv6HeaderPacketInfo.PayloadSize, 1);
          }
         }
        }
       }
       break;
      }

      FreePacket(pkt);
     }

     FreeBuf(b);
    }
   }
   else
   {

    if (next_header == IP_PROTO_UDP)
    {
     if (ike->IPsec->Services.L2TP_IPsec || ike->IPsec->Services.EtherIP_IPsec)
     {

      ProcIPsecUdpPacketRecv(ike, c, dec_data, dec_size);
     }
    }
    else if (next_header == IPSEC_IP_PROTO_ETHERIP)
    {
     if (ike->IPsec->Services.EtherIP_IPsec)
     {

      ProcIPsecEtherIPPacketRecv(ike, c, dec_data, dec_size, 0);
     }
    }
    else if (next_header == IPSEC_IP_PROTO_L2TPV3)
    {
     if (ike->IPsec->Services.EtherIP_IPsec)
     {

      ProcL2TPv3PacketRecv(ike, c, dec_data, dec_size, 0);
     }
    }
   }

   update_status = 1;
  }

  FreeBuf(dec);
 }

 if (update_status)
 {
  bool start_qm = 0;

  c->CurrentIpSecSaRecv = ipsec_sa;
  if (ipsec_sa->PairIPsecSa != ((void*)0))
  {
   c->CurrentIpSecSaSend = ipsec_sa->PairIPsecSa;

   if (p->DestPort == IPSEC_PORT_IPSEC_ESP_UDP)
   {
    IPSECSA *send_sa = c->CurrentIpSecSaSend;
    if (send_sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_TUNNEL)
    {
     send_sa->TransformSetting.CapsuleMode = IKE_P2_CAPSULE_NAT_TUNNEL_1;
    }
    else if (send_sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_TRANSPORT)
    {
     send_sa->TransformSetting.CapsuleMode = IKE_P2_CAPSULE_NAT_TRANSPORT_1;
    }
   }
  }
  c->LastCommTick = ike->Now;
  ipsec_sa->LastCommTick = ike->Now;
  if (ipsec_sa->PairIPsecSa != ((void*)0))
  {
   ipsec_sa->PairIPsecSa->LastCommTick = ike->Now;
  }

  SetIkeClientEndpoint(ike, c, &p->SrcIP, p->SrcPort, &p->DstIP, p->DestPort);

  if (seq >= 0xf0000000)
  {

   start_qm = 1;
  }

  if (ipsec_sa->TransformSetting.LifeKilobytes != 0)
  {
   UINT64 hard_size = (UINT64)ipsec_sa->TransformSetting.LifeKilobytes * (UINT64)1000;
   UINT64 soft_size = hard_size * (UINT64)2 / (UINT64)3;

   if (ipsec_sa->TotalSize >= soft_size)
   {

    start_qm = 1;
   }
  }

  if (start_qm)
  {
   if (ipsec_sa->StartQM_FlagSet == 0)
   {
    c->StartQuickModeAsSoon = 1;
    ipsec_sa->StartQM_FlagSet = 1;
   }
  }
 }
}
