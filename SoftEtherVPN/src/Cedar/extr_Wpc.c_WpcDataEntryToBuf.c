
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; int Data; } ;
typedef TYPE_1__ WPC_ENTRY ;
typedef scalar_t__ UINT ;
typedef int BUF ;


 scalar_t__ DecodeSafe64 (void*,int ,int ) ;
 int Free (void*) ;
 void* Malloc (scalar_t__) ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,void*,scalar_t__) ;

BUF *WpcDataEntryToBuf(WPC_ENTRY *e)
{
 void *data;
 UINT data_size;
 UINT size;
 BUF *b;

 if (e == ((void*)0))
 {
  return ((void*)0);
 }

 data_size = e->Size + 4096;
 data = Malloc(data_size);
 size = DecodeSafe64(data, e->Data, e->Size);

 b = NewBuf();
 WriteBuf(b, data, size);
 SeekBuf(b, 0, 0);

 Free(data);

 return b;
}
