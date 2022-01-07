
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ PriorityQoS; } ;
struct TYPE_14__ {int Size; int Buf; } ;
struct TYPE_13__ {scalar_t__ IsControl; int AttributeList; int MessageType; } ;
struct TYPE_12__ {int SendQueue; } ;
typedef TYPE_1__ SSTP_SERVER ;
typedef TYPE_2__ SSTP_PACKET ;
typedef TYPE_3__ BUF ;
typedef TYPE_4__ BLOCK ;


 int Debug (char*,int ,int ) ;
 int Free (TYPE_3__*) ;
 int InsertQueue (int ,TYPE_4__*) ;
 int LIST_NUM (int ) ;
 TYPE_4__* NewBlock (int ,int ,int ) ;
 TYPE_3__* SstpBuildPacket (TYPE_2__*) ;

void SstpSendPacket(SSTP_SERVER *s, SSTP_PACKET *p)
{
 BUF *b;
 BLOCK *block;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (p->IsControl)
 {
  Debug("SSTP Control Packet Send: Msg = %u, Num = %u\n", p->MessageType, LIST_NUM(p->AttributeList));
 }
 else
 {

 }

 b = SstpBuildPacket(p);
 if (b == ((void*)0))
 {
  return;
 }

 block = NewBlock(b->Buf, b->Size, 0);
 block->PriorityQoS = p->IsControl;
 Free(b);

 InsertQueue(s->SendQueue, block);
}
