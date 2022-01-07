
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_9__ ;
typedef struct TYPE_56__ TYPE_8__ ;
typedef struct TYPE_55__ TYPE_7__ ;
typedef struct TYPE_54__ TYPE_6__ ;
typedef struct TYPE_53__ TYPE_5__ ;
typedef struct TYPE_52__ TYPE_4__ ;
typedef struct TYPE_51__ TYPE_3__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_15__ ;
typedef struct TYPE_47__ TYPE_14__ ;
typedef struct TYPE_46__ TYPE_13__ ;
typedef struct TYPE_45__ TYPE_12__ ;
typedef struct TYPE_44__ TYPE_11__ ;
typedef struct TYPE_43__ TYPE_10__ ;


typedef int cp ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_55__ {int Size; int Data; int DestPort; int DstIP; int SrcPort; int SrcIP; } ;
typedef TYPE_7__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_51__ {int Hash; } ;
struct TYPE_57__ {TYPE_14__* IkeClient; int LastCommTick; int HashSize; int SKEYID_a; TYPE_3__ TransformSetting; int CryptoKey; scalar_t__ Established; } ;
struct TYPE_56__ {int Now; } ;
struct TYPE_54__ {int Size; scalar_t__ Buf; } ;
struct TYPE_53__ {int Size; int Buf; } ;
struct TYPE_44__ {scalar_t__ MessageType; TYPE_6__* Spi; TYPE_5__* MessageData; } ;
struct TYPE_52__ {TYPE_11__ Notice; int Delete; } ;
struct TYPE_50__ {int Size; scalar_t__ Buf; } ;
struct TYPE_49__ {int Size; } ;
struct TYPE_48__ {int Size; int Buf; } ;
struct TYPE_47__ {TYPE_9__* CurrentIkeSa; int LastCommTick; } ;
struct TYPE_46__ {int Iv; int Key; } ;
struct TYPE_45__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; scalar_t__ MessageId; int FlagEncrypted; int PayloadList; TYPE_2__* DecryptedPayload; } ;
struct TYPE_43__ {TYPE_4__ Payload; TYPE_1__* BitArray; } ;
typedef TYPE_8__ IKE_SERVER ;
typedef TYPE_9__ IKE_SA ;
typedef TYPE_10__ IKE_PACKET_PAYLOAD ;
typedef TYPE_11__ IKE_PACKET_NOTICE_PAYLOAD ;
typedef int IKE_PACKET_DELETE_PAYLOAD ;
typedef TYPE_12__ IKE_PACKET ;
typedef TYPE_13__ IKE_CRYPTO_PARAM ;
typedef int IKE_COMMON_HEADER ;
typedef TYPE_14__ IKE_CLIENT ;
typedef TYPE_15__ BUF ;


 TYPE_9__* FindIkeSaByResponderCookieAndClient (TYPE_8__*,scalar_t__,TYPE_14__*) ;
 int FreeBuf (TYPE_15__*) ;
 int IKE_MAX_HASH_SIZE ;
 scalar_t__ IKE_NOTICE_DPD_REQUEST ;
 scalar_t__ IKE_NOTICE_DPD_RESPONSE ;
 int IKE_PAYLOAD_DELETE ;
 int IKE_PAYLOAD_HASH ;
 int IKE_PAYLOAD_NOTICE ;
 int IkeCalcPhase2InitialIv (int ,TYPE_9__*,scalar_t__) ;
 scalar_t__ IkeCompareHash (TYPE_10__*,int *,int ) ;
 int IkeDebugUdpSendRawPacket (TYPE_12__*) ;
 int IkeFree (TYPE_12__*) ;
 TYPE_10__* IkeGetPayload (int ,int ,int) ;
 int IkeGetPayloadNum (int ,int ) ;
 int IkeHMac (int ,int *,int ,int ,int ,int ) ;
 int IkeNewNoticeDpdPayload (int,scalar_t__,scalar_t__,int) ;
 TYPE_12__* IkeParse (int ,int ,TYPE_13__*) ;
 TYPE_15__* NewBuf () ;
 int ProcDeletePayload (TYPE_8__*,TYPE_14__*,int *) ;
 int READ_UINT (int ) ;
 scalar_t__ READ_UINT64 (int *) ;
 TYPE_9__* SearchIkeSaByCookie (TYPE_8__*,scalar_t__,scalar_t__) ;
 TYPE_14__* SearchOrCreateNewIkeClientForIkePacket (TYPE_8__*,int *,int ,int *,int ,TYPE_12__*) ;
 int SendInformationalExchangePacket (TYPE_8__*,TYPE_14__*,int ) ;
 int WriteBuf (TYPE_15__*,void*,int) ;
 int WriteBufInt (TYPE_15__*,scalar_t__) ;
 int Zero (TYPE_13__*,int) ;

void ProcIkeInformationalExchangePacketRecv(IKE_SERVER *ike, UDPPACKET *p, IKE_PACKET *header)
{
 IKE_CLIENT *c;
 IKE_SA *ike_sa;

 if (ike == ((void*)0) || p == ((void*)0) || header == ((void*)0) || header->InitiatorCookie == 0 || header->ResponderCookie == 0
  || header->MessageId == 0 || header->FlagEncrypted == 0)
 {
  return;
 }

 c = SearchOrCreateNewIkeClientForIkePacket(ike, &p->SrcIP, p->SrcPort, &p->DstIP, p->DestPort, header);

 if (c == ((void*)0))
 {
  return;
 }

 ike_sa = FindIkeSaByResponderCookieAndClient(ike, header->ResponderCookie, c);

 if (ike_sa != ((void*)0) && ike_sa->Established)
 {
  IKE_PACKET *pr;
  IKE_CRYPTO_PARAM cp;


  Zero(&cp, sizeof(cp));
  cp.Key = ike_sa->CryptoKey;
  IkeCalcPhase2InitialIv(cp.Iv, ike_sa, header->MessageId);

  pr = IkeParse(p->Data, p->Size, &cp);



  if (pr != ((void*)0))
  {

   IKE_PACKET_PAYLOAD *hash_payload;

   hash_payload = IkeGetPayload(pr->PayloadList, IKE_PAYLOAD_HASH, 0);
   if (hash_payload != ((void*)0))
   {

    UINT header_and_hash_size = sizeof(IKE_COMMON_HEADER) + hash_payload->BitArray->Size;
    void *after_hash_data = ((UCHAR *)pr->DecryptedPayload->Buf) + header_and_hash_size;
    if (pr->DecryptedPayload->Size > header_and_hash_size)
    {
     UINT after_hash_size = pr->DecryptedPayload->Size - header_and_hash_size;
     UCHAR hash1[IKE_MAX_HASH_SIZE];
     BUF *hash1_buf;

     hash1_buf = NewBuf();
     WriteBufInt(hash1_buf, header->MessageId);
     WriteBuf(hash1_buf, after_hash_data, after_hash_size);

     IkeHMac(ike_sa->TransformSetting.Hash, hash1, ike_sa->SKEYID_a, ike_sa->HashSize,
      hash1_buf->Buf, hash1_buf->Size);


     if (IkeCompareHash(hash_payload, hash1, ike_sa->HashSize))
     {
      UINT i, num;

      num = IkeGetPayloadNum(pr->PayloadList, IKE_PAYLOAD_DELETE);
      for (i = 0;i < num;i++)
      {
       IKE_PACKET_PAYLOAD *payload = IkeGetPayload(pr->PayloadList, IKE_PAYLOAD_DELETE, i);
       IKE_PACKET_DELETE_PAYLOAD *del = &payload->Payload.Delete;

       ProcDeletePayload(ike, c, del);
      }
      num = IkeGetPayloadNum(pr->PayloadList, IKE_PAYLOAD_NOTICE);

      for (i = 0;i < num;i++)
      {
       IKE_PACKET_PAYLOAD *payload = IkeGetPayload(pr->PayloadList, IKE_PAYLOAD_NOTICE, i);
       IKE_PACKET_NOTICE_PAYLOAD *n = &payload->Payload.Notice;

       if (n->MessageType == IKE_NOTICE_DPD_REQUEST || n->MessageType == IKE_NOTICE_DPD_RESPONSE)
       {
        if (n->MessageData != ((void*)0) && n->MessageData->Size == sizeof(UINT))
        {
         UINT seq_no = READ_UINT(n->MessageData->Buf);

         if (n->Spi->Size == (sizeof(UINT64) * 2))
         {
          UINT64 init_cookie = READ_UINT64(((UCHAR *)n->Spi->Buf));
          UINT64 resp_cookie = READ_UINT64(((UCHAR *)n->Spi->Buf) + sizeof(UINT64));

          if (init_cookie != 0 && resp_cookie != 0)
          {
           IKE_SA *found_ike_sa = SearchIkeSaByCookie(ike, init_cookie, resp_cookie);

           if (found_ike_sa != ((void*)0) && found_ike_sa->IkeClient == c)
           {
            if (n->MessageType == IKE_NOTICE_DPD_REQUEST)
            {

             SendInformationalExchangePacket(ike, c,
              IkeNewNoticeDpdPayload(1, init_cookie, resp_cookie,
              seq_no));
            }


            found_ike_sa->LastCommTick = ike->Now;
            ike_sa->LastCommTick = ike->Now;
            found_ike_sa->IkeClient->LastCommTick = ike->Now;
            ike_sa->IkeClient->LastCommTick = ike->Now;
            ike_sa->IkeClient->CurrentIkeSa = ike_sa;
           }
          }
         }
        }
       }
      }
     }

     FreeBuf(hash1_buf);
    }
   }

   IkeFree(pr);
  }
 }
}
