
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int h ;
struct TYPE_6__ {int SpiSize; int ProtocolId; int MessageType; int DoI; } ;
struct TYPE_5__ {int MessageData; int * Spi; int ProtocolId; int MessageType; } ;
typedef TYPE_1__ IKE_PACKET_NOTICE_PAYLOAD ;
typedef TYPE_2__ IKE_NOTICE_HEADER ;
typedef int BUF ;


 int Debug (char*,scalar_t__) ;
 int Endian16 (int ) ;
 scalar_t__ Endian32 (int ) ;
 scalar_t__ IKE_SA_DOI_IPSEC ;
 int ReadBuf (int *,TYPE_2__*,int) ;
 int * ReadBufFromBuf (int *,int ) ;
 int ReadRemainBuf (int *) ;

bool IkeParseNoticePayload(IKE_PACKET_NOTICE_PAYLOAD *t, BUF *b)
{
 IKE_NOTICE_HEADER h;

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &h, sizeof(h)) != sizeof(h))
 {
  return 0;
 }

 if (Endian32(h.DoI) != IKE_SA_DOI_IPSEC)
 {
  Debug("ISAKMP: Invalid DoI Value: 0x%x\n", Endian32(h.DoI));
  return 0;
 }

 t->MessageType = Endian16(h.MessageType);
 t->ProtocolId = h.ProtocolId;
 t->Spi = ReadBufFromBuf(b, h.SpiSize);
 if (t->Spi == ((void*)0))
 {
  return 0;
 }
 t->MessageData = ReadRemainBuf(b);

 return 1;
}
