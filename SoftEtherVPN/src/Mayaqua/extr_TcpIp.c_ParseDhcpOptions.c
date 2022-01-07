
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int Size; int* Data; int Id; } ;
typedef int LIST ;
typedef TYPE_1__ DHCP_OPTION ;
typedef int BUF ;


 int Add (int *,TYPE_1__*) ;
 int Copy (int*,int*,int) ;
 int DHCP_ID_PRIVATE ;
 int Free (int*) ;
 int FreeBuf (int *) ;
 int * NewBuf () ;
 int * NewListFast (int *) ;
 int ReadBuf (int *,int*,int) ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,void*,int) ;
 void* ZeroMalloc (int) ;

LIST *ParseDhcpOptions(void *data, UINT size)
{
 BUF *b;
 LIST *o;
 DHCP_OPTION *last_opt;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, data, size);
 SeekBuf(b, 0, 0);

 o = NewListFast(((void*)0));

 last_opt = ((void*)0);

 while (1)
 {
  UCHAR c = 0;
  UCHAR sz = 0;
  DHCP_OPTION *opt;
  if (ReadBuf(b, &c, 1) != 1)
  {
   break;
  }
  if (c == 0xff)
  {
   break;
  }
  if (ReadBuf(b, &sz, 1) != 1)
  {
   break;
  }

  if (c == DHCP_ID_PRIVATE && last_opt != ((void*)0))
  {
   UINT new_size = last_opt->Size + (UINT)sz;
   UCHAR *new_buf = ZeroMalloc(new_size);
   Copy(new_buf, last_opt->Data, last_opt->Size);
   ReadBuf(b, new_buf + last_opt->Size, sz);
   Free(last_opt->Data);
   last_opt->Data = new_buf;
   last_opt->Size = new_size;
  }
  else
  {
   opt = ZeroMalloc(sizeof(DHCP_OPTION));
   opt->Id = (UINT)c;
   opt->Size = (UINT)sz;
   opt->Data = ZeroMalloc((UINT)sz);
   ReadBuf(b, opt->Data, sz);
   Add(o, opt);

   last_opt = opt;
  }
 }

 FreeBuf(b);

 return o;
}
