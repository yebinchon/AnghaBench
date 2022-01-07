
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int OpCode; int KeyId; int DataSize; int NumAck; int PacketId; int * Data; int YourSessionId; scalar_t__* AckPacketId; int MySessionId; } ;
typedef TYPE_1__ OPENVPN_PACKET ;
typedef int BUF ;


 size_t MIN (int,int ) ;
 int * NewBuf () ;
 int OPENVPN_MAX_NUMACK ;
 int OPENVPN_P_ACK_V1 ;
 int OPENVPN_P_DATA_V1 ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,int *,int) ;
 int WriteBufChar (int *,int) ;
 int WriteBufInt (int *,int) ;
 int WriteBufInt64 (int *,int ) ;

BUF *OvsBuildPacket(OPENVPN_PACKET *p)
{
 BUF *b;
 UCHAR uc;
 UINT num_ack;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();


 uc = ((p->OpCode << 3) & 0xF8) | (p->KeyId & 0x07);
 WriteBufChar(b, uc);

 if (p->OpCode == OPENVPN_P_DATA_V1)
 {

  WriteBuf(b, p->Data, p->DataSize);
  SeekBuf(b, 0, 0);
  return b;
 }


 WriteBufInt64(b, p->MySessionId);


 num_ack = MIN(p->NumAck, OPENVPN_MAX_NUMACK);
 WriteBufChar(b, (UCHAR)num_ack);

 if (p->NumAck >= 1)
 {
  UINT i;

  for (i = 0;i < num_ack;i++)
  {
   WriteBufInt(b, (UCHAR)p->AckPacketId[i]);
  }


  WriteBufInt64(b, p->YourSessionId);
 }

 if (p->OpCode != OPENVPN_P_ACK_V1)
 {

  WriteBufInt(b, p->PacketId);


  if (p->DataSize >= 1 && p->Data != ((void*)0))
  {
   WriteBuf(b, p->Data, p->DataSize);
  }
 }

 SeekBuf(b, 0, 0);

 return b;
}
