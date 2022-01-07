
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_12__ ;
typedef struct TYPE_37__ TYPE_11__ ;


typedef int dummy_hash_data ;
typedef int cp ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_44__ {int Iv; int Key; } ;
typedef TYPE_6__ UCHAR ;
struct TYPE_47__ {int FlagEncrypted; int MessageId; } ;
struct TYPE_42__ {TYPE_3__* Data; } ;
struct TYPE_43__ {TYPE_4__ Hash; } ;
struct TYPE_46__ {TYPE_5__ Payload; TYPE_1__* BitArray; } ;
struct TYPE_40__ {int Hash; } ;
struct TYPE_45__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; int CryptoKey; int HashSize; int SKEYID_a; TYPE_2__ TransformSetting; } ;
struct TYPE_41__ {int Buf; } ;
struct TYPE_39__ {scalar_t__ Size; } ;
struct TYPE_38__ {scalar_t__ Size; scalar_t__ Buf; } ;
struct TYPE_37__ {int ClientPort; int ClientIP; int ServerPort; int ServerIP; TYPE_7__* CurrentIkeSa; } ;
typedef int LIST ;
typedef int IKE_SERVER ;
typedef TYPE_7__ IKE_SA ;
typedef TYPE_8__ IKE_PACKET_PAYLOAD ;
typedef TYPE_9__ IKE_PACKET ;
typedef int IKE_HEADER ;
typedef TYPE_6__ IKE_CRYPTO_PARAM ;
typedef int IKE_COMMON_HEADER ;
typedef TYPE_11__ IKE_CLIENT ;
typedef TYPE_12__ BUF ;


 int Add (int *,TYPE_8__*) ;
 int Copy (int ,TYPE_6__*,int ) ;
 int Free (TYPE_12__*) ;
 int FreeBuf (TYPE_12__*) ;
 int GenerateNewMessageId (int *) ;
 int IKE_EXCHANGE_TYPE_INFORMATION ;
 int IKE_MAX_HASH_SIZE ;
 int IKE_PAYLOAD_HASH ;
 int IKE_UDP_TYPE_ISAKMP ;
 TYPE_12__* IkeBuild (TYPE_9__*,TYPE_6__*) ;
 int IkeCalcPhase2InitialIv (int ,TYPE_7__*,int ) ;
 int IkeDebugUdpSendRawPacket (TYPE_9__*) ;
 int IkeFree (TYPE_9__*) ;
 int IkeFreePayload (TYPE_8__*) ;
 int IkeHMac (int ,TYPE_6__*,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_9__* IkeNew (scalar_t__,scalar_t__,int ,int,int,int,int ,int *) ;
 TYPE_8__* IkeNewDataPayload (int ,TYPE_6__*,int ) ;
 int IkeSendUdpPacket (int *,int ,int *,int ,int *,int ,scalar_t__,scalar_t__) ;
 TYPE_12__* MemToBuf (TYPE_6__*,scalar_t__) ;
 TYPE_12__* NewBuf () ;
 int * NewListFast (int *) ;
 scalar_t__ Rand64 () ;
 int WriteBufBuf (TYPE_12__*,TYPE_12__*) ;
 int WriteBufInt (TYPE_12__*,int ) ;
 int Zero (TYPE_6__*,int) ;

void SendInformationalExchangePacketEx(IKE_SERVER *ike, IKE_CLIENT *c, IKE_PACKET_PAYLOAD *payload, bool force_plain, UINT64 init_cookie, UINT64 resp_cookie)
{
 IKE_SA *sa;
 IKE_PACKET *ps;
 LIST *payload_list;
 UCHAR dummy_hash_data[IKE_MAX_HASH_SIZE];
 IKE_PACKET_PAYLOAD *hash_payload;
 BUF *ps_buf;
 UINT after_hash_offset, after_hash_size;
 BUF *ps_buf_after_hash;
 BUF *tmp_buf;
 UCHAR hash[IKE_MAX_HASH_SIZE];
 IKE_CRYPTO_PARAM cp;
 bool plain = 0;

 if (ike == ((void*)0) || c == ((void*)0) || payload == ((void*)0))
 {
  IkeFreePayload(payload);
  return;
 }

 sa = c->CurrentIkeSa;
 if (sa == ((void*)0))
 {
  plain = 1;
 }

 if (force_plain)
 {
  plain = 1;
 }

 if (plain && (init_cookie == 0 && resp_cookie == 0))
 {
  init_cookie = Rand64();
  resp_cookie = 0;
 }

 payload_list = NewListFast(((void*)0));

 Zero(dummy_hash_data, sizeof(dummy_hash_data));


 if (plain == 0)
 {
  hash_payload = IkeNewDataPayload(IKE_PAYLOAD_HASH, dummy_hash_data, sa->HashSize);
  Add(payload_list, hash_payload);
 }


 Add(payload_list, payload);


 ps = IkeNew((plain ? init_cookie : sa->InitiatorCookie), (plain ? resp_cookie : sa->ResponderCookie),
  IKE_EXCHANGE_TYPE_INFORMATION, 0, 0, 0,
  GenerateNewMessageId(ike), payload_list);

 if (plain == 0)
 {

  ps_buf = IkeBuild(ps, ((void*)0));


  after_hash_offset = sizeof(IKE_HEADER) + hash_payload->BitArray->Size + sizeof(IKE_COMMON_HEADER);
  after_hash_size = ((ps_buf->Size > after_hash_offset) ? (ps_buf->Size - after_hash_offset) : 0);

  ps_buf_after_hash = MemToBuf(((UCHAR *)ps_buf->Buf) + after_hash_offset, after_hash_size);
  FreeBuf(ps_buf);


  tmp_buf = NewBuf();
  WriteBufInt(tmp_buf, ps->MessageId);
  WriteBufBuf(tmp_buf, ps_buf_after_hash);
  IkeHMac(sa->TransformSetting.Hash, hash, sa->SKEYID_a, sa->HashSize, tmp_buf->Buf, tmp_buf->Size);
  FreeBuf(tmp_buf);


  Copy(hash_payload->Payload.Hash.Data->Buf, hash, sa->HashSize);

  ps->FlagEncrypted = 1;
  FreeBuf(ps_buf_after_hash);
 }


 Zero(&cp, sizeof(cp));

 if (plain == 0)
 {
  cp.Key = sa->CryptoKey;
  IkeCalcPhase2InitialIv(cp.Iv, sa, ps->MessageId);
 }

 ps_buf = IkeBuild(ps, &cp);

 IkeSendUdpPacket(ike, IKE_UDP_TYPE_ISAKMP, &c->ServerIP, c->ServerPort,
  &c->ClientIP, c->ClientPort,
  ps_buf->Buf, ps_buf->Size);





 Free(ps_buf);

 IkeFree(ps);
}
