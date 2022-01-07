
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_12__ {scalar_t__ Dsap; scalar_t__ Ssap; } ;
struct TYPE_11__ {int* DestAddress; int* SrcAddress; int Protocol; } ;
struct TYPE_10__ {int BroadcastPacket; int InvalidSourcePacket; int VlanTypeID; TYPE_2__* MacHeader; } ;
typedef TYPE_1__ PKT ;
typedef TYPE_2__ MAC_HEADER ;
typedef TYPE_3__ LLC_HEADER ;


 int Endian16 (int ) ;
 scalar_t__ LLC_DSAP_BPDU ;
 scalar_t__ LLC_SSAP_BPDU ;



 int ParsePacketARPv4 (TYPE_1__*,int *,int) ;
 int ParsePacketBPDU (TYPE_1__*,int *,int) ;
 int ParsePacketIPv4 (TYPE_1__*,int *,int) ;
 int ParsePacketIPv6 (TYPE_1__*,int *,int) ;
 int ParsePacketTAGVLAN (TYPE_1__*,int *,int) ;
 scalar_t__ memcmp (int*,int*,int) ;

bool ParsePacketL2Ex(PKT *p, UCHAR *buf, UINT size, bool no_l3)
{
 UINT i;
 bool b1, b2;
 USHORT type_id_16;

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(MAC_HEADER))
 {
  return 0;
 }


 p->MacHeader = (MAC_HEADER *)buf;

 buf += sizeof(MAC_HEADER);
 size -= sizeof(MAC_HEADER);


 p->BroadcastPacket = 1;
 b1 = 1;
 b2 = 1;
 for (i = 0;i < 6;i++)
 {
  if (p->MacHeader->DestAddress[i] != 0xff)
  {
   p->BroadcastPacket = 0;
  }
  if (p->MacHeader->SrcAddress[i] != 0xff)
  {
   b1 = 0;
  }
  if (p->MacHeader->SrcAddress[i] != 0x00)
  {
   b2 = 0;
  }
 }
 if (b1 || b2 || (memcmp(p->MacHeader->SrcAddress, p->MacHeader->DestAddress, 6) == 0))
 {
  p->InvalidSourcePacket = 1;
 }
 else
 {
  p->InvalidSourcePacket = 0;
 }

 if (p->MacHeader->DestAddress[0] & 0x01)
 {
  p->BroadcastPacket = 1;
 }


 type_id_16 = Endian16(p->MacHeader->Protocol);

 if (type_id_16 > 1500)
 {

  switch (type_id_16)
  {
  case 130:
   if (no_l3)
   {
    return 1;
   }

   return ParsePacketARPv4(p, buf, size);

  case 129:
   if (no_l3)
   {
    return 1;
   }

   return ParsePacketIPv4(p, buf, size);

  case 128:
   if (no_l3)
   {
    return 1;
   }

   return ParsePacketIPv6(p, buf, size);

  default:
   if (type_id_16 == p->VlanTypeID)
   {

    return ParsePacketTAGVLAN(p, buf, size);
   }
   else
   {
    return 1;
   }
  }
 }
 else
 {


  UINT length = (UINT)type_id_16;
  LLC_HEADER *llc;


  if (size < length || size < sizeof(LLC_HEADER))
  {
   return 1;
  }


  llc = (LLC_HEADER *)buf;
  buf += sizeof(LLC_HEADER);
  size -= sizeof(LLC_HEADER);


  if (llc->Dsap == LLC_DSAP_BPDU && llc->Ssap == LLC_SSAP_BPDU)
  {

   return ParsePacketBPDU(p, buf, size);
  }
  else
  {

   return 1;
  }
 }
}
