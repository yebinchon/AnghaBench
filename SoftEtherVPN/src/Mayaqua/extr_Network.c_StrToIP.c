
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_9__ {scalar_t__* addr; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ IP ;


 char* CopyStr (char*) ;
 int Free (char*) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ StrToIP6 (TYPE_2__*,char*) ;
 int ToInt (char*) ;
 int Trim (char*) ;
 int Zero (TYPE_2__*,int) ;

bool StrToIP(IP *ip, char *str)
{
 TOKEN_LIST *token;
 char *tmp;
 UINT i;

 if (ip == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (StrToIP6(ip, str))
 {
  return 1;
 }

 Zero(ip, sizeof(IP));

 tmp = CopyStr(str);
 Trim(tmp);
 token = ParseToken(tmp, ".");
 Free(tmp);

 if (token->NumTokens != 4)
 {
  FreeToken(token);
  return 0;
 }
 for (i = 0;i < 4;i++)
 {
  char *s = token->Token[i];
  if (s[0] < '0' || s[0] > '9' ||
   (ToInt(s) >= 256))
  {
   FreeToken(token);
   return 0;
  }
 }
 Zero(ip, sizeof(IP));
 for (i = 0;i < 4;i++)
 {
  ip->addr[i] = (UCHAR)ToInt(token->Token[i]);
 }

 FreeToken(token);

 return 1;
}
