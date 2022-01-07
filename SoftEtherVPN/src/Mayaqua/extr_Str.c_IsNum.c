
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int FreeToken (TYPE_1__*) ;
 int MAX_SIZE ;
 TYPE_1__* ParseToken (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 int Trim (char*) ;

bool IsNum(char *str)
{
 char c;
 UINT i, len;
 UINT n = 0;
 char tmp[MAX_SIZE];
 TOKEN_LIST *t;

 if (str == ((void*)0))
 {
  return 0;
 }

 StrCpy(tmp, sizeof(tmp), str);
 Trim(tmp);

 if (StrLen(tmp) == 0)
 {
  return 0;
 }

 t = ParseToken(tmp, " ");

 if (t->NumTokens >= 1)
 {
  StrCpy(tmp, sizeof(tmp), t->Token[0]);
 }

 FreeToken(t);

 len = StrLen(tmp);
 for (i = 0;i < len;i++)
 {
  bool b = 0;
  c = tmp[i];
  if (('0' <= c && c <= '9') || (c == '+') || (c == '-') || (c == ','))
  {
   b = 1;
  }

  if (b == 0)
  {
   return 0;
  }
 }

 for (i = 0;i < len;i++)
 {
  c = tmp[i];
  if (c == '-')
  {
   n++;
  }
 }
 if (n >= 2)
 {
  return 0;
 }

 return 1;
}
