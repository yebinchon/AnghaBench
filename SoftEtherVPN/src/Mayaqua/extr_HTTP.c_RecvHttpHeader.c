
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Version; } ;
struct TYPE_9__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int SOCK ;
typedef TYPE_2__ HTTP_HEADER ;


 int AddHttpValueStr (TYPE_2__*,char*) ;
 int FreeHttpHeader (TYPE_2__*) ;
 int FreeSafe (int ) ;
 int FreeToken (TYPE_1__*) ;
 int HTTP_HEADER_LINE_MAX_SIZE ;
 scalar_t__ IsEmptyStr (char*) ;
 TYPE_2__* NewHttpHeader (int ,int ,int ) ;
 int PTR_TO_PTR (char*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 char* RecvLine (int *,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int Trim (char*) ;

HTTP_HEADER *RecvHttpHeader(SOCK *s)
{
 TOKEN_LIST *token = ((void*)0);
 char *str = ((void*)0);
 HTTP_HEADER *header = ((void*)0);

 if (s == ((void*)0))
 {
  return ((void*)0);
 }


 str = RecvLine(s, HTTP_HEADER_LINE_MAX_SIZE);
 if (str == ((void*)0))
 {
  return ((void*)0);
 }


 token = ParseToken(str, " ");

 FreeSafe(PTR_TO_PTR(str));

 if (token->NumTokens < 3)
 {
  FreeToken(token);
  return ((void*)0);
 }


 header = NewHttpHeader(token->Token[0], token->Token[1], token->Token[2]);
 FreeToken(token);

 if (StrCmpi(header->Version, "HTTP/0.9") == 0)
 {

  return header;
 }


 while (1)
 {
  str = RecvLine(s, HTTP_HEADER_LINE_MAX_SIZE);
  Trim(str);
  if (IsEmptyStr(str))
  {

   FreeSafe(PTR_TO_PTR(str));
   break;
  }

  if (AddHttpValueStr(header, str) == 0)
  {
   FreeSafe(PTR_TO_PTR(str));
   FreeHttpHeader(header);
   header = ((void*)0);
   break;
  }

  FreeSafe(PTR_TO_PTR(str));
 }

 return header;
}
