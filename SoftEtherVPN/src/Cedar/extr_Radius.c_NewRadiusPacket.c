
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UCHAR ;
struct TYPE_4__ {int AvpList; void* PacketId; void* Code; } ;
typedef TYPE_1__ RADIUS_PACKET ;


 int NewListFast (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

RADIUS_PACKET *NewRadiusPacket(UCHAR code, UCHAR packet_id)
{
 RADIUS_PACKET *r = ZeroMalloc(sizeof(RADIUS_PACKET));

 r->Code = code;
 r->PacketId = packet_id;

 r->AvpList = NewListFast(((void*)0));

 return r;
}
