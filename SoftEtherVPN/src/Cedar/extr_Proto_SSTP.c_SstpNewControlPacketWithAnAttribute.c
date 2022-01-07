
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int AttributeList; } ;
typedef TYPE_1__ SSTP_PACKET ;
typedef int SSTP_ATTRIBUTE ;


 int Add (int ,int *) ;
 TYPE_1__* SstpNewControlPacket (int ) ;

SSTP_PACKET *SstpNewControlPacketWithAnAttribute(USHORT message_type, SSTP_ATTRIBUTE *a)
{
 SSTP_PACKET *p = SstpNewControlPacket(message_type);

 if (a != ((void*)0))
 {
  Add(p->AttributeList, a);
 }

 return p;
}
