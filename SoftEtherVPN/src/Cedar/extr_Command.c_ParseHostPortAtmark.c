
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 char* CopyStr (int ) ;
 int FreeToken (TYPE_1__*) ;
 int IsEmptyStr (int ) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ ToInt (int ) ;
 int Trim (char*) ;

bool ParseHostPortAtmark(char *src, char **host, UINT *port, UINT default_port)
{
 TOKEN_LIST *t;
 bool ret = 0;

 if (src == ((void*)0))
 {
  return 0;
 }

 t = ParseToken(src, "@");
 if (t == ((void*)0))
 {
  return 0;
 }

 if (port != ((void*)0))
 {
  *port = 0;
 }

 if (default_port == 0)
 {
  if (t->NumTokens < 2)
  {
   FreeToken(t);
   return 0;
  }

  if (ToInt(t->Token[1]) == 0)
  {
   FreeToken(t);
   return 0;
  }
 }

 if (t->NumTokens >= 2 && ToInt(t->Token[1]) == 0)
 {
  FreeToken(t);
  return 0;
 }

 if (t->NumTokens >= 1 && IsEmptyStr(t->Token[0]) == 0)
 {
  ret = 1;

  if (host != ((void*)0))
  {
   *host = CopyStr(t->Token[0]);
   Trim(*host);
  }

  if (t->NumTokens >= 2)
  {
   if (port != ((void*)0))
   {
    *port = ToInt(t->Token[1]);
   }
  }
 }

 if (port != ((void*)0))
 {
  if (*port == 0)
  {
   *port = default_port;
  }
 }

 FreeToken(t);

 return ret;
}
