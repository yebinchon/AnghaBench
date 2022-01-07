
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Str; int LastSelectedTime; } ;
typedef int LIST ;
typedef TYPE_1__ CANDIDATE ;
typedef int BUF ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 scalar_t__ UniStrLen (int ) ;
 int UniStrSize (int ) ;
 int WriteBuf (int *,int ,int ) ;
 int WriteBufInt (int *,scalar_t__) ;
 int WriteBufInt64 (int *,int ) ;

BUF *CandidateToBuf(LIST *o)
{
 BUF *b;
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 WriteBufInt(b, LIST_NUM(o));
 for (i = 0;i < LIST_NUM(o);i++)
 {
  CANDIDATE *c = LIST_DATA(o, i);
  WriteBufInt64(b, c->LastSelectedTime);
  WriteBufInt(b, UniStrLen(c->Str));
  WriteBuf(b, c->Str, UniStrSize(c->Str));
 }

 SeekBuf(b, 0, 0);

 return b;
}
