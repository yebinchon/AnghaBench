
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int IsControl; int AttributeList; int Version; int MessageType; } ;
typedef TYPE_1__ SSTP_PACKET ;


 int NewListFast (int *) ;
 int SSTP_VERSION_1 ;
 TYPE_1__* ZeroMalloc (int) ;

SSTP_PACKET *SstpNewControlPacket(USHORT message_type)
{
 SSTP_PACKET *p = ZeroMalloc(sizeof(SSTP_PACKET));

 p->IsControl = 1;
 p->MessageType = message_type;
 p->Version = SSTP_VERSION_1;
 p->AttributeList = NewListFast(((void*)0));

 return p;
}
