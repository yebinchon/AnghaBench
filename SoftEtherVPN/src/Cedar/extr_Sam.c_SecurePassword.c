
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha0 (void*,int ,int ) ;
 int WriteBuf (TYPE_1__*,void*,int ) ;

void SecurePassword(void *secure_password, void *password, void *random)
{
 BUF *b;

 if (secure_password == ((void*)0) || password == ((void*)0) || random == ((void*)0))
 {
  return;
 }

 b = NewBuf();
 WriteBuf(b, password, SHA1_SIZE);
 WriteBuf(b, random, SHA1_SIZE);
 Sha0(secure_password, b->Buf, b->Size);

 FreeBuf(b);
}
