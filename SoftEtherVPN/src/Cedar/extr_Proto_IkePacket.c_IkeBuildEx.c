
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int h ;
struct TYPE_19__ {scalar_t__ Size; int Buf; } ;
struct TYPE_18__ {int Flag; void* MessageSize; void* MessageId; int ExchangeType; int Version; int NextPayload; void* ResponderCookie; void* InitiatorCookie; } ;
struct TYPE_17__ {scalar_t__ FlagEncrypted; TYPE_3__* DecryptedPayload; int * PayloadList; scalar_t__ MessageId; scalar_t__ FlagAuthOnly; scalar_t__ FlagCommit; int ExchangeType; int ResponderCookie; int InitiatorCookie; } ;
typedef TYPE_1__ IKE_PACKET ;
typedef TYPE_2__ IKE_HEADER ;
typedef int IKE_CRYPTO_PARAM ;
typedef TYPE_3__ BUF ;


 void* CloneBuf (TYPE_3__*) ;
 int Debug (char*) ;
 void* Endian32 (scalar_t__) ;
 void* Endian64 (int ) ;
 int FreeBuf (TYPE_3__*) ;
 int IKE_HEADER_FLAG_AUTH_ONLY ;
 int IKE_HEADER_FLAG_COMMIT ;
 int IKE_HEADER_FLAG_ENCRYPTED ;
 int IKE_VERSION ;
 TYPE_3__* IkeBuildPayloadList (int *) ;
 TYPE_3__* IkeEncryptWithPadding (int ,scalar_t__,int *) ;
 int IkeGetFirstPayloadType (int *) ;
 TYPE_3__* NewBuf () ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int WriteBuf (TYPE_3__*,TYPE_2__*,int) ;
 int WriteBufBuf (TYPE_3__*,TYPE_3__*) ;
 int Zero (TYPE_2__*,int) ;

BUF *IkeBuildEx(IKE_PACKET *p, IKE_CRYPTO_PARAM *cparam, bool use_original_decrypted)
{
 IKE_HEADER h;
 BUF *msg_buf;
 BUF *ret;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 if (p->PayloadList == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.InitiatorCookie = Endian64(p->InitiatorCookie);
 h.ResponderCookie = Endian64(p->ResponderCookie);
 h.NextPayload = IkeGetFirstPayloadType(p->PayloadList);
 h.Version = IKE_VERSION;
 h.ExchangeType = p->ExchangeType;
 h.Flag = (p->FlagEncrypted ? IKE_HEADER_FLAG_ENCRYPTED : 0) |
  (p->FlagCommit ? IKE_HEADER_FLAG_COMMIT : 0) |
  (p->FlagAuthOnly ? IKE_HEADER_FLAG_AUTH_ONLY : 0);
 h.MessageId = Endian32(p->MessageId);

 if (p->DecryptedPayload != ((void*)0) && use_original_decrypted)
 {
  msg_buf = CloneBuf(p->DecryptedPayload);
 }
 else
 {
  msg_buf = IkeBuildPayloadList(p->PayloadList);
 }

 if (p->DecryptedPayload != ((void*)0))
 {
  FreeBuf(p->DecryptedPayload);
 }

 p->DecryptedPayload = CloneBuf(msg_buf);

 if (p->FlagEncrypted)
 {
  BUF *b;

  b = IkeEncryptWithPadding(msg_buf->Buf, msg_buf->Size, cparam);

  if (b == ((void*)0))
  {
   Debug("ISAKMP: Packet Encrypt Failed\n");
   FreeBuf(msg_buf);
   return ((void*)0);
  }

  FreeBuf(msg_buf);

  msg_buf = b;
 }

 h.MessageSize = Endian32(msg_buf->Size + sizeof(h));

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));
 WriteBufBuf(ret, msg_buf);

 FreeBuf(msg_buf);

 SeekBuf(ret, 0, 0);

 return ret;
}
