
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int c ;
typedef scalar_t__ UINT ;
typedef char UCHAR ;
struct TYPE_9__ {scalar_t__ Size; scalar_t__ Buf; } ;
struct TYPE_8__ {int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ BUF ;


 int Copy (char*,scalar_t__,int) ;
 int FreeBuf (TYPE_2__*) ;
 char* Malloc (int) ;
 TYPE_2__* NewBuf () ;
 int RecvAll (TYPE_1__*,char*,int,int ) ;
 int WriteBuf (TYPE_2__*,char*,int) ;

char *RecvLine(SOCK *s, UINT max_size)
{
 BUF *b;
 char c;
 char *str;

 if (s == ((void*)0) || max_size == 0)
 {
  return ((void*)0);
 }

 b = NewBuf();
 while (1)
 {
  UCHAR *buf;
  if (RecvAll(s, &c, sizeof(c), s->SecureMode) == 0)
  {
   FreeBuf(b);
   return ((void*)0);
  }
  WriteBuf(b, &c, sizeof(c));
  buf = (UCHAR *)b->Buf;
  if (b->Size > max_size)
  {
   FreeBuf(b);
   return ((void*)0);
  }
  if (b->Size >= 1)
  {
   if (buf[b->Size - 1] == '\n')
   {
    b->Size--;
    if (b->Size >= 1)
    {
     if (buf[b->Size - 1] == '\r')
     {
      b->Size--;
     }
    }
    str = Malloc(b->Size + 1);
    Copy(str, b->Buf, b->Size);
    str[b->Size] = 0;
    FreeBuf(b);

    return str;
   }
  }
 }
}
