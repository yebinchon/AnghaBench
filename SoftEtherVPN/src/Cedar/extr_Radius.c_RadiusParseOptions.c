
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_4__ {int Id; int Size; int Data; } ;
typedef int LIST ;
typedef TYPE_1__ DHCP_OPTION ;
typedef int BUF ;


 int Add (int *,TYPE_1__*) ;
 int Clone (int*,int) ;
 int Endian16 (int) ;
 int * NewList (int *) ;
 int ReadBuf (int *,int*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

LIST *RadiusParseOptions(BUF *b)
{
 LIST *o;
 UCHAR code;
 UCHAR id;
 USHORT len;
 UCHAR auth[16];

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 o = NewList(((void*)0));

 ReadBuf(b, &code, 1);
 ReadBuf(b, &id, 1);
 len = 0;
 ReadBuf(b, &len, 2);
 len = Endian16(len);
 ReadBuf(b, auth, 16);

 while (1)
 {
  UCHAR attribute_id;
  UCHAR size;
  UCHAR data[256];
  DHCP_OPTION *d;

  if (ReadBuf(b, &attribute_id, 1) != 1)
  {
   break;
  }

  if (ReadBuf(b, &size, 1) != 1)
  {
   break;
  }

  if (size <= 2)
  {
   break;
  }

  size -= 2;
  if (ReadBuf(b, data, size) != size)
  {
   break;
  }

  d = ZeroMalloc(sizeof(DHCP_OPTION));
  d->Id = attribute_id;
  d->Size = size;
  d->Data = Clone(data, d->Size);

  Add(o, d);
 }

 return o;
}
