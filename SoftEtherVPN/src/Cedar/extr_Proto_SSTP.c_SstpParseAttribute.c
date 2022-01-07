
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int TotalLength; int DataSize; int Data; int AttributeId; } ;
typedef TYPE_1__ SSTP_ATTRIBUTE ;


 int Clone (int *,int) ;
 int READ_USHORT (int *) ;
 int SstpFreeAttribute (TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

SSTP_ATTRIBUTE *SstpParseAttribute(UCHAR *data, UINT size)
{
 SSTP_ATTRIBUTE *a;

 if (data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(SSTP_ATTRIBUTE));

 if (size < 4)
 {
  SstpFreeAttribute(a);
  return ((void*)0);
 }

 data++;
 size--;


 a->AttributeId = *((UCHAR *)data);
 data++;
 size--;


 a->TotalLength = READ_USHORT(data) & 0xFFF;
 data += sizeof(USHORT);
 size -= sizeof(USHORT);

 if (a->TotalLength < 4)
 {

  SstpFreeAttribute(a);
  return ((void*)0);
 }

 a->DataSize = a->TotalLength - 4;
 if (a->DataSize > size)
 {

  SstpFreeAttribute(a);
  return ((void*)0);
 }

 a->Data = Clone(data, a->DataSize);

 return a;
}
