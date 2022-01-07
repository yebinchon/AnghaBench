
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int OpCode; int KeyId; int DataSize; int NumAck; int* AckPacketId; void* Data; void* PacketId; void* YourSessionId; void* MySessionId; } ;
typedef TYPE_1__ OPENVPN_PACKET ;


 void* Clone (int*,int) ;
 int OPENVPN_P_ACK_V1 ;
 int OPENVPN_P_DATA_V1 ;
 int OvsFreePacket (TYPE_1__*) ;
 void* READ_UINT (int*) ;
 void* READ_UINT64 (int*) ;
 TYPE_1__* ZeroMalloc (int) ;

OPENVPN_PACKET *OvsParsePacket(UCHAR *data, UINT size)
{
 UCHAR uc;
 OPENVPN_PACKET *ret = ((void*)0);

 if (data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(OPENVPN_PACKET));

 uc = *((UCHAR *)data);
 data++;
 size--;

 ret->OpCode = ((uc & 0xF8) >> 3) & 0x1F;
 ret->KeyId = uc & 0x07;

 if (ret->OpCode == OPENVPN_P_DATA_V1)
 {

  ret->DataSize = size;
  ret->Data = Clone(data, size);
  return ret;
 }


 if (size < sizeof(UINT64))
 {
  goto LABEL_ERROR;
 }
 ret->MySessionId = READ_UINT64(data);
 data += sizeof(UINT64);
 size -= sizeof(UINT64);


 if (size < 1)
 {
  goto LABEL_ERROR;
 }
 uc = *((UCHAR *)data);
 data++;
 size--;

 ret->NumAck = uc;

 if (ret->NumAck > 4)
 {
  goto LABEL_ERROR;
 }

 if (ret->NumAck >= 1)
 {
  UINT i;

  if (size < (sizeof(UINT) * (UINT)ret->NumAck + sizeof(UINT64)))
  {
   goto LABEL_ERROR;
  }

  for (i = 0;i < ret->NumAck;i++)
  {
   UINT ui;

   ui = READ_UINT(data);

   ret->AckPacketId[i] = ui;

   data += sizeof(UINT);
   size -= sizeof(UINT);
  }

  ret->YourSessionId = READ_UINT64(data);
  data += sizeof(UINT64);
  size -= sizeof(UINT64);
 }

 if (ret->OpCode != OPENVPN_P_ACK_V1)
 {

  if (size < sizeof(UINT))
  {
   goto LABEL_ERROR;
  }

  ret->PacketId = READ_UINT(data);
  data += sizeof(UINT);
  size -= sizeof(UINT);


  ret->DataSize = size;
  if (size >= 1)
  {
   ret->Data = Clone(data, size);
  }
 }

 return ret;

LABEL_ERROR:
 OvsFreePacket(ret);
 return ((void*)0);
}
