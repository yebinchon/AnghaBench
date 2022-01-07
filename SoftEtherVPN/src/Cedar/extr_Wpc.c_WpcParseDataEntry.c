
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int size_str ;
struct TYPE_8__ {scalar_t__ Size; int EntryName; int * Data; } ;
typedef TYPE_1__ WPC_ENTRY ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_9__ {scalar_t__ Size; scalar_t__ Current; scalar_t__ Buf; } ;
typedef int LIST ;
typedef TYPE_2__ BUF ;


 int Add (int *,TYPE_1__*) ;
 int Copy (int ,char*,int) ;
 int * NewListFast (int *) ;
 int ReadBuf (TYPE_2__*,char*,int) ;
 int SeekBuf (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ ToInt (char*) ;
 int WPC_DATA_ENTRY_SIZE ;
 int Zero (char*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

LIST *WpcParseDataEntry(BUF *b)
{
 char entry_name[WPC_DATA_ENTRY_SIZE];
 char size_str[11];
 LIST *o;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 SeekBuf(b, 0, 0);

 o = NewListFast(((void*)0));

 while (1)
 {
  UINT size;
  WPC_ENTRY *e;

  if (ReadBuf(b, entry_name, WPC_DATA_ENTRY_SIZE) != WPC_DATA_ENTRY_SIZE)
  {
   break;
  }

  Zero(size_str, sizeof(size_str));
  if (ReadBuf(b, size_str, 10) != 10)
  {
   break;
  }

  size = ToInt(size_str);
  if ((b->Size - b->Current) < size)
  {
   break;
  }

  e = ZeroMalloc(sizeof(WPC_ENTRY));
  e->Data = (UCHAR *)b->Buf + b->Current;
  Copy(e->EntryName, entry_name, WPC_DATA_ENTRY_SIZE);
  e->Size = size;

  SeekBuf(b, size, 1);

  Add(o, e);
 }

 return o;
}
