
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int Mandatory; int DataSize; int Data; int Type; } ;
struct TYPE_5__ {int IsControl; int HasLength; int HasSequence; int Ver; int AvpList; scalar_t__ MessageType; } ;
typedef TYPE_1__ L2TP_PACKET ;
typedef TYPE_2__ L2TP_AVP ;


 int Add (int ,TYPE_2__*) ;
 int Clone (int *,int) ;
 int Endian16 (scalar_t__) ;
 int L2TP_AVP_TYPE_MESSAGE_TYPE ;
 int NewListFast (int *) ;
 void* ZeroMalloc (int) ;

L2TP_PACKET *NewL2TPControlPacket(UINT message_type, bool is_v3)
{
 L2TP_PACKET *p = ZeroMalloc(sizeof(L2TP_PACKET));

 p->IsControl = 1;
 p->HasLength = 1;
 p->HasSequence = 1;
 p->Ver = (is_v3 ? 3 : 2);
 p->MessageType = message_type;

 p->AvpList = NewListFast(((void*)0));

 if (message_type != 0)
 {
  L2TP_AVP *a;
  USHORT us;

  a = ZeroMalloc(sizeof(L2TP_AVP));

  a->Type = L2TP_AVP_TYPE_MESSAGE_TYPE;
  a->Mandatory = 1;

  us = Endian16(message_type);
  a->Data = Clone(&us, sizeof(USHORT));
  a->DataSize = sizeof(USHORT);

  Add(p->AvpList, a);
 }

 return p;
}
