
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int * SendControlPacketList; } ;
struct TYPE_8__ {scalar_t__ PacketId; } ;
typedef TYPE_1__ OPENVPN_CONTROL_PACKET ;
typedef TYPE_2__ OPENVPN_CHANNEL ;
typedef int LIST ;


 int AddDistinct (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int OvsFreeControlPacket (TYPE_1__*) ;
 int ReleaseList (int *) ;

void OvsDeleteFromSendingControlPacketList(OPENVPN_CHANNEL *c, UINT num_acks, UINT *acks)
{
 LIST *o;
 UINT i;

 if (c == ((void*)0) || num_acks == 0)
 {
  return;
 }

 o = NewListFast(((void*)0));
 for (i = 0;i < num_acks;i++)
 {
  UINT ack = acks[i];
  UINT j;

  for (j = 0;j < LIST_NUM(c->SendControlPacketList);j++)
  {
   OPENVPN_CONTROL_PACKET *p = LIST_DATA(c->SendControlPacketList, j);

   if (p->PacketId == ack)
   {
    AddDistinct(o, p);
   }
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  OPENVPN_CONTROL_PACKET *p = LIST_DATA(o, i);

  Delete(c->SendControlPacketList, p);

  OvsFreeControlPacket(p);
 }

 ReleaseList(o);
}
