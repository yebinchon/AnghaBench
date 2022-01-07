
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int NumAck; int * AckPacketId; int KeyId; int OpCode; } ;
typedef int OPENVPN_SESSION ;
typedef int OPENVPN_SERVER ;
typedef TYPE_1__ OPENVPN_PACKET ;
typedef TYPE_2__ BUF ;


 int Debug (char*,...) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* OvsBuildPacket (TYPE_1__*) ;
 int OvsSendPacketRawNow (int *,int *,int ,int ) ;

void OvsSendPacketNow(OPENVPN_SERVER *s, OPENVPN_SESSION *se, OPENVPN_PACKET *p)
{
 BUF *b;
 UINT i;

 if (s == ((void*)0) || se == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Debug("Sending Opcode=%u  ", p->OpCode);
 if (p->NumAck >= 1)
 {
  Debug("Sending ACK Packet IDs (c=%u): ", p->KeyId);
  for (i = 0;i < p->NumAck;i++)
  {
   Debug("%u ", p->AckPacketId[i]);
  }
 }
 Debug("\n");

 b = OvsBuildPacket(p);

 OvsSendPacketRawNow(s, se, b->Buf, b->Size);

 Free(b);
}
