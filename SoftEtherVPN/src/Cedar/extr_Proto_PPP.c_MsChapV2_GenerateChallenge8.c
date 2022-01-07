
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int username2 ;
typedef int domainname2 ;
typedef char UCHAR ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int Copy (char*,char*,int) ;
 int FreeBuf (TYPE_1__*) ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 TYPE_1__* NewBuf () ;
 int ParseNtUsername (char*,char*,int,char*,int,int) ;
 int SHA1_SIZE ;
 int Sha1 (char*,int ,int ) ;
 int StrLen (char*) ;
 int WriteBuf (TYPE_1__*,char*,int) ;

void MsChapV2_GenerateChallenge8(UCHAR *dst, UCHAR *client_challenge, UCHAR *server_challenge, char *username)
{
 BUF *b;
 UCHAR hash[SHA1_SIZE];
 char username2[MAX_SIZE];
 char domainname2[MAX_SIZE];

 if (dst == ((void*)0) || client_challenge == ((void*)0) || server_challenge == ((void*)0))
 {
  return;
 }

 b = NewBuf();

 WriteBuf(b, client_challenge, 16);
 WriteBuf(b, server_challenge, 16);

 ParseNtUsername(username, username2, sizeof(username2), domainname2, sizeof(domainname2), 1);

 if (IsEmptyStr(username2) == 0)
 {
  WriteBuf(b, username2, StrLen(username2));
 }

 Sha1(hash, b->Buf, b->Size);

 FreeBuf(b);

 Copy(dst, hash, 8);
}
