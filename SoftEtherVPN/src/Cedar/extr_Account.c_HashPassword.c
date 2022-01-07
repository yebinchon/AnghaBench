
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 char* CopyStr (char*) ;
 int Free (char*) ;
 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int Sha0 (void*,int ,int ) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int WriteBuf (TYPE_1__*,char*,int ) ;

void HashPassword(void *dst, char *username, char *password)
{
 BUF *b;
 char *username_upper;

 if (dst == ((void*)0) || username == ((void*)0) || password == ((void*)0))
 {
  return;
 }

 b = NewBuf();
 username_upper = CopyStr(username);
 StrUpper(username_upper);
 WriteBuf(b, password, StrLen(password));
 WriteBuf(b, username_upper, StrLen(username_upper));
 Sha0(dst, b->Buf, b->Size);

 FreeBuf(b);
 Free(username_upper);
}
