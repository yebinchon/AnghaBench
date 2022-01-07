
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT ;
typedef void UCHAR ;
struct TYPE_14__ {int Size; } ;
struct TYPE_13__ {int Size; void* Buf; } ;
struct TYPE_12__ {int Flag; int NextPayload; int MessageSize; int MessageId; int ExchangeType; int ResponderCookie; int InitiatorCookie; } ;
struct TYPE_11__ {int MessageSize; int FlagEncrypted; int FlagCommit; int FlagAuthOnly; int MessageId; TYPE_9__* DecryptedPayload; int PayloadList; int ExchangeType; void* ResponderCookie; void* InitiatorCookie; } ;
typedef TYPE_1__ IKE_PACKET ;
typedef TYPE_2__ IKE_HEADER ;
typedef int IKE_CRYPTO_PARAM ;
typedef TYPE_3__ BUF ;


 TYPE_9__* CloneBuf (TYPE_3__*) ;
 int Debug (char*) ;
 int Endian32 (int ) ;
 void* Endian64 (int ) ;
 int FreeBuf (TYPE_3__*) ;
 int IKE_HEADER_FLAG_AUTH_ONLY ;
 int IKE_HEADER_FLAG_COMMIT ;
 int IKE_HEADER_FLAG_ENCRYPTED ;
 TYPE_3__* IkeDecrypt (void*,int,int *) ;
 int IkeFree (TYPE_1__*) ;
 int IkeParsePayloadListEx (void*,int,int ,int*) ;
 int MIN (int ,int) ;
 void* MemToBuf (void*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

IKE_PACKET *IkeParseEx(void *data, UINT size, IKE_CRYPTO_PARAM *cparam, bool header_only)
{
 IKE_PACKET *p = ((void*)0);
 BUF *b;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 b = MemToBuf(data, size);

 if (b->Size < sizeof(IKE_HEADER))
 {
  Debug("ISAKMP: Invalid Packet Size\n");
 }
 else
 {

  IKE_HEADER *h = (IKE_HEADER *)b->Buf;

  p = ZeroMalloc(sizeof(IKE_PACKET));

  p->MessageSize = Endian32(h->MessageSize);
  p->InitiatorCookie = Endian64(h->InitiatorCookie);
  p->ResponderCookie = Endian64(h->ResponderCookie);
  p->ExchangeType = h->ExchangeType;
  p->FlagEncrypted = (h->Flag & IKE_HEADER_FLAG_ENCRYPTED) ? 1 : 0;
  p->FlagCommit = (h->Flag & IKE_HEADER_FLAG_COMMIT) ? 1 : 0;
  p->FlagAuthOnly = (h->Flag & IKE_HEADER_FLAG_AUTH_ONLY) ? 1 : 0;
  p->MessageId = Endian32(h->MessageId);

  if (b->Size < Endian32(h->MessageSize) ||
   Endian32(h->MessageSize) < sizeof(IKE_HEADER))
  {
   Debug("ISAKMP: Invalid Packet Size\n");

   IkeFree(p);
   p = ((void*)0);
  }
  else
  {
   if (header_only == 0)
   {
    bool ok = 0;
    UCHAR *payload_data;
    UINT payload_size;
    BUF *buf = ((void*)0);

    payload_data = ((UCHAR *)h) + sizeof(IKE_HEADER);
    payload_size = Endian32(h->MessageSize) - sizeof(IKE_HEADER);


    if (p->FlagEncrypted)
    {
     buf = IkeDecrypt(payload_data, payload_size, cparam);

     if (buf != ((void*)0))
     {
      ok = 1;

      payload_data = buf->Buf;
      payload_size = buf->Size;

      p->DecryptedPayload = CloneBuf(buf);
     }
    }
    else
    {
     ok = 1;
    }

    if (ok == 0)
    {
     Debug("ISAKMP: Decrypt Failed\n");

     IkeFree(p);
     p = ((void*)0);
    }
    else
    {
     UINT total_read_size;


     p->PayloadList = IkeParsePayloadListEx(payload_data,
      payload_size,
      h->NextPayload,
      &total_read_size);

     if (p->DecryptedPayload != ((void*)0))
     {
      p->DecryptedPayload->Size = MIN(p->DecryptedPayload->Size, total_read_size);
     }
     else
     {
      p->DecryptedPayload = MemToBuf(payload_data, payload_size);
     }
    }

    if (buf != ((void*)0))
    {
     FreeBuf(buf);
    }
   }
  }
 }

 FreeBuf(b);

 return p;
}
