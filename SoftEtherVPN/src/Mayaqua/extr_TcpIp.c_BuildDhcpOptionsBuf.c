
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {scalar_t__ Size; scalar_t__* Data; scalar_t__ Id; } ;
typedef int LIST ;
typedef TYPE_1__ DHCP_OPTION ;
typedef int BUF ;


 scalar_t__ DHCP_ID_PRIVATE ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewBuf () ;
 int WriteBuf (int *,scalar_t__*,int) ;

BUF *BuildDhcpOptionsBuf(LIST *o)
{
 BUF *b;
 UINT i;
 UCHAR id;
 UCHAR sz;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 for (i = 0;i < LIST_NUM(o);i++)
 {
  DHCP_OPTION *d = LIST_DATA(o, i);
  UINT current_size = d->Size;
  UINT current_pos = 0;

  id = (UCHAR)d->Id;
  if (d->Size <= 255)
  {
   sz = (UCHAR)d->Size;
  }
  else
  {
   sz = 0xFF;
  }
  WriteBuf(b, &id, 1);
  WriteBuf(b, &sz, 1);
  WriteBuf(b, d->Data, sz);

  current_size -= sz;
  current_pos += sz;

  while (current_size != 0)
  {
   id = DHCP_ID_PRIVATE;
   if (current_size <= 255)
   {
    sz = (UCHAR)current_size;
   }
   else
   {
    sz = 0xFF;
   }
   WriteBuf(b, &id, 1);
   WriteBuf(b, &sz, 1);
   WriteBuf(b, ((UCHAR *)d->Data) + current_pos, sz);

   current_size -= sz;
   current_pos += sz;
  }

 }

 id = 0xff;
 WriteBuf(b, &id, 1);

 return b;
}
