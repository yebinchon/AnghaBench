
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int SendControlPacketList; int NextSendPacketId; } ;
struct TYPE_6__ {int NoResend; scalar_t__ NextSendTime; scalar_t__ DataSize; int Data; scalar_t__ PacketId; int OpCode; } ;
typedef TYPE_1__ OPENVPN_CONTROL_PACKET ;
typedef TYPE_2__ OPENVPN_CHANNEL ;


 int Add (int ,TYPE_1__*) ;
 int Clone (int *,scalar_t__) ;
 TYPE_1__* ZeroMalloc (int) ;

void OvsSendControlPacketEx(OPENVPN_CHANNEL *c, UCHAR opcode, UCHAR *data, UINT data_size, bool no_resend)
{
 OPENVPN_CONTROL_PACKET *p;

 if (c == ((void*)0) || (data_size != 0 && data == ((void*)0)))
 {
  return;
 }

 p = ZeroMalloc(sizeof(OPENVPN_CONTROL_PACKET));

 p->NoResend = no_resend;

 p->OpCode = opcode;
 p->PacketId = c->NextSendPacketId++;

 if (data != ((void*)0))
 {
  p->Data = Clone(data, data_size);
  p->DataSize = data_size;
 }

 p->NextSendTime = 0;

 Add(c->SendControlPacketList, p);
}
