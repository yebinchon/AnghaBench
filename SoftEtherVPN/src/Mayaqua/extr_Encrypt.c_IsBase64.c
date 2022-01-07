
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ Size; scalar_t__ Buf; } ;
typedef TYPE_1__ BUF ;


 char EOF ;
 scalar_t__ INFINITE ;
 scalar_t__ SearchAsciiInBinary (scalar_t__,scalar_t__,char*,int) ;

bool IsBase64(BUF *b)
{
 UINT i;

 if (b == ((void*)0))
 {
  return 0;
 }

 if (SearchAsciiInBinary(b->Buf, b->Size, "-----BEGIN", 0) != INFINITE)
 {
  return 1;
 }

 for (i = 0;i < b->Size;i++)
 {
  char c = ((char *)b->Buf)[i];
  bool b = 0;
  if ('a' <= c && c <= 'z')
  {
   b = 1;
  }
  else if ('A' <= c && c <= 'Z')
  {
   b = 1;
  }
  else if ('0' <= c && c <= '9')
  {
   b = 1;
  }
  else if (c == ':' || c == '.' || c == ';' || c == ',')
  {
   b = 1;
  }
  else if (c == '!' || c == '&' || c == '#' || c == '(' || c == ')')
  {
   b = 1;
  }
  else if (c == '-' || c == ' ')
  {
   b = 1;
  }
  else if (c == 13 || c == 10 || c == EOF)
  {
   b = 1;
  }
  else if (c == '\t' || c == '=' || c == '+' || c == '/')
  {
   b = 1;
  }
  if (b == 0)
  {
   return 0;
  }
 }
 return 1;
}
