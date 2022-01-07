
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ SpiSize; int NumSpis; int ProtocolId; int DoI; } ;
struct TYPE_6__ {int SpiList; int ProtocolId; } ;
typedef TYPE_1__ IKE_PACKET_DELETE_PAYLOAD ;
typedef TYPE_2__ IKE_DELETE_HEADER ;
typedef int BUF ;


 int Add (int ,int *) ;
 int Debug (char*,scalar_t__) ;
 scalar_t__ Endian16 (int ) ;
 scalar_t__ Endian32 (int ) ;
 scalar_t__ IKE_SA_DOI_IPSEC ;
 int IkeFreeDeletePayload (TYPE_1__*) ;
 int NewListFast (int *) ;
 int ReadBuf (int *,TYPE_2__*,int) ;
 int * ReadBufFromBuf (int *,scalar_t__) ;

bool IkeParseDeletePayload(IKE_PACKET_DELETE_PAYLOAD *t, BUF *b)
{
 IKE_DELETE_HEADER h;
 UINT num_spi;
 UINT spi_size;
 UINT i;
 bool ok = 1;

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

 t->ProtocolId = h.ProtocolId;
 t->SpiList = NewListFast(((void*)0));
 num_spi = Endian16(h.NumSpis);
 spi_size = h.SpiSize;

 for (i = 0;i < num_spi;i++)
 {
  BUF *spi = ReadBufFromBuf(b, spi_size);

  if (spi == ((void*)0))
  {
   ok = 0;
   break;
  }

  Add(t->SpiList, spi);
 }

 if (ok == 0)
 {
  IkeFreeDeletePayload(t);
  return 0;
 }

 return 1;
}
