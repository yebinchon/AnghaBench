
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Version; int IsControl; int DataSize; int * AttributeList; int Data; } ;
typedef TYPE_1__ SSTP_PACKET ;


 int Clone (int*,int) ;
 int READ_USHORT (int*) ;
 scalar_t__ SSTP_VERSION_1 ;
 int SstpFreePacket (TYPE_1__*) ;
 int * SstpParseAttributeList (int ,int,TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

SSTP_PACKET *SstpParsePacket(UCHAR *data, UINT size)
{
 SSTP_PACKET *p;
 USHORT len;

 if (data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 if (size < 4)
 {
  return ((void*)0);
 }

 p = ZeroMalloc(sizeof(SSTP_PACKET));


 p->Version = *((UCHAR *)data);
 data++;
 size--;

 if (p->Version != SSTP_VERSION_1)
 {

  SstpFreePacket(p);
  return ((void*)0);
 }


 if ((*((UCHAR *)data)) & 0x01)
 {
  p->IsControl = 1;
 }
 data++;
 size--;


 len = READ_USHORT(data) & 0xFFF;
 data += sizeof(USHORT);
 size -= sizeof(USHORT);

 if (len < 4)
 {

  SstpFreePacket(p);
  return ((void*)0);
 }

 if (((UINT)(len - 4)) > size)
 {

  SstpFreePacket(p);
  return ((void*)0);
 }


 p->DataSize = len - 4;
 p->Data = Clone(data, p->DataSize);

 if (p->IsControl)
 {

  p->AttributeList = SstpParseAttributeList(p->Data, p->DataSize, p);

  if (p->AttributeList == ((void*)0))
  {

   SstpFreePacket(p);
   return ((void*)0);
  }
 }

 return p;
}
