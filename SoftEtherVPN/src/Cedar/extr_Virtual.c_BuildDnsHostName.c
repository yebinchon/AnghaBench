
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_4__ {size_t NumTokens; int** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int BUF ;


 int FreeToken (TYPE_1__*) ;
 int * NewBuf () ;
 TYPE_1__* ParseToken (char*,char*) ;
 int SeekBuf (int *,int ,int ) ;
 scalar_t__ StrLen (int*) ;
 int WriteBuf (int *,int*,int) ;

BUF *BuildDnsHostName(char *hostname)
{
 UINT i;
 UCHAR size;
 TOKEN_LIST *token;
 BUF *b;

 if (hostname == ((void*)0))
 {
  return ((void*)0);
 }


 token = ParseToken(hostname, ".");
 if (token == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();


 for (i = 0;i < token->NumTokens;i++)
 {
  size = (UCHAR)StrLen(token->Token[i]);
  WriteBuf(b, &size, 1);
  WriteBuf(b, token->Token[i], size);
 }


 size = 0;
 WriteBuf(b, &size, 1);

 SeekBuf(b, 0, 0);

 FreeToken(token);

 return b;
}
