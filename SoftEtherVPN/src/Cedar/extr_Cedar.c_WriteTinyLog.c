
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dt ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int Lock; int io; } ;
typedef TYPE_1__ TINY_LOG ;
typedef TYPE_2__ BUF ;


 int FileWrite (int ,int ,int ) ;
 int FreeBuf (TYPE_2__*) ;
 int GetDateTimeStrMilli64 (char*,int,int ) ;
 int LocalTime64 () ;
 int Lock (int ) ;
 int MAX_PATH ;
 TYPE_2__* NewBuf () ;
 int StrCat (char*,int,char*) ;
 int StrLen (char*) ;
 int Unlock (int ) ;
 int WriteBuf (TYPE_2__*,char*,int) ;

void WriteTinyLog(TINY_LOG *t, char *str)
{
 BUF *b;
 char dt[MAX_PATH];

 if (t == ((void*)0))
 {
  return;
 }

 GetDateTimeStrMilli64(dt, sizeof(dt), LocalTime64());
 StrCat(dt, sizeof(dt), ": ");

 b = NewBuf();

 WriteBuf(b, dt, StrLen(dt));
 WriteBuf(b, str, StrLen(str));
 WriteBuf(b, "\r\n", 2);

 Lock(t->Lock);
 {
  FileWrite(t->io, b->Buf, b->Size);

 }
 Unlock(t->Lock);

 FreeBuf(b);
}
