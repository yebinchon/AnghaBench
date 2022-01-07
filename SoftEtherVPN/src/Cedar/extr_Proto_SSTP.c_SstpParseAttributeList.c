
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int TotalLength; } ;
struct TYPE_7__ {void* MessageType; } ;
typedef TYPE_1__ SSTP_PACKET ;
typedef TYPE_2__ SSTP_ATTRIBUTE ;
typedef int LIST ;


 int Add (int *,TYPE_2__*) ;
 int LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 void* READ_USHORT (int *) ;
 int SstpFreeAttribute (TYPE_2__*) ;
 int SstpFreeAttributeList (int *) ;
 TYPE_2__* SstpParseAttribute (int *,int) ;

LIST *SstpParseAttributeList(UCHAR *data, UINT size, SSTP_PACKET *p)
{
 LIST *o;
 USHORT us;
 UINT num;

 if (size == 0 || data == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 if (size < 4)
 {
  return ((void*)0);
 }


 us = READ_USHORT(data);
 p->MessageType = us;
 data += sizeof(USHORT);
 size -= sizeof(USHORT);


 num = READ_USHORT(data);
 data += sizeof(USHORT);
 size -= sizeof(USHORT);


 o = NewListFast(((void*)0));

 while (LIST_NUM(o) < num)
 {
  SSTP_ATTRIBUTE *a = SstpParseAttribute(data, size);

  if (a == ((void*)0))
  {
   SstpFreeAttributeList(o);
   return ((void*)0);
  }

  if (a->TotalLength > size)
  {
   SstpFreeAttribute(a);
   SstpFreeAttributeList(o);
   return ((void*)0);
  }

  Add(o, a);

  data += a->TotalLength;
  size -= a->TotalLength;
 }

 return o;
}
