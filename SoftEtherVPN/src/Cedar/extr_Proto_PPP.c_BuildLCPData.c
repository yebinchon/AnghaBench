
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int Size; scalar_t__ Buf; } ;
struct TYPE_11__ {int Code; int Id; int* Data; int DataSize; int OptionList; } ;
struct TYPE_10__ {int DataSize; int Type; int* Data; } ;
typedef TYPE_1__ PPP_OPTION ;
typedef TYPE_2__ PPP_LCP ;
typedef TYPE_3__ BUF ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_3__* NewBuf () ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int WRITE_USHORT (int*,int ) ;
 int WriteBuf (TYPE_3__*,int*,int) ;

BUF *BuildLCPData(PPP_LCP *c)
{
 BUF *b;
 UCHAR zero = 0;
 UINT i;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();


 WriteBuf(b, &c->Code, 1);


 WriteBuf(b, &c->Id, 1);


 zero = 0;
 WriteBuf(b, &zero, 1);
 WriteBuf(b, &zero, 1);

 if (c->Data == ((void*)0))
 {

  for (i = 0;i < LIST_NUM(c->OptionList);i++)
  {
   PPP_OPTION *o = LIST_DATA(c->OptionList, i);
   UCHAR sz = o->DataSize + 2;

   WriteBuf(b, &o->Type, 1);
   WriteBuf(b, &sz, 1);

   WriteBuf(b, o->Data, o->DataSize);
  }
 }
 else
 {

  WriteBuf(b, c->Data, c->DataSize);
 }

 SeekBuf(b, 0, 0);


 WRITE_USHORT(((UCHAR *)b->Buf) + 2, b->Size);

 return b;
}
