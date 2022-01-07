
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int digest ;
typedef char UCHAR ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha1 (char*,int ,int ) ;
 int StrLen (char*) ;
 int WriteBuf (TYPE_1__*,char*,int) ;

void MsChapV2Server_GenerateResponse(UCHAR *dst, UCHAR *nt_password_hash_hash, UCHAR *client_response, UCHAR *challenge8)
{
 UCHAR digest[SHA1_SIZE];
 BUF *b;
 char *magic1 = "Magic server to client signing constant";
 char *magic2 = "Pad to make it do more than one iteration";

 if (dst == ((void*)0) || nt_password_hash_hash == ((void*)0) || client_response == ((void*)0) || challenge8 == ((void*)0))
 {
  return;
 }

 b = NewBuf();
 WriteBuf(b, nt_password_hash_hash, 16);
 WriteBuf(b, client_response, 24);
 WriteBuf(b, magic1, StrLen(magic1));
 Sha1(digest, b->Buf, b->Size);
 FreeBuf(b);

 b = NewBuf();
 WriteBuf(b, digest, sizeof(digest));
 WriteBuf(b, challenge8, 8);
 WriteBuf(b, magic2, StrLen(magic2));
 Sha1(dst, b->Buf, b->Size);
 FreeBuf(b);
}
