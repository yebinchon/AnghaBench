
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tmp ;
typedef int ss ;
typedef scalar_t__ UINT ;
typedef void* UCHAR ;
struct TYPE_10__ {scalar_t__ ipv6_scope_id; void** ipv6_addr; } ;
struct TYPE_9__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ IP ;


 int CheckIPItemStr6 (char*) ;
 int Copy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ EndWith (char*,char*) ;
 int FreeToken (TYPE_1__*) ;
 scalar_t__ INFINITE ;
 int IPItemStrToChars6 (void**,char*) ;
 int MAX_PATH ;
 TYPE_1__* ParseTokenWithNullStr (char*,char*) ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrCpyAllowOverlap (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 scalar_t__ ToInt (char*) ;
 int Trim (char*) ;
 int ZeroIP6 (TYPE_2__*) ;

bool StrToIP6(IP *ip, char *str)
{
 TOKEN_LIST *t;
 char tmp[MAX_PATH];
 IP a;
 UINT i;
 UINT scope_id = 0;

 if (str == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 ZeroIP6(&a);

 StrCpy(tmp, sizeof(tmp), str);
 Trim(tmp);

 if (StartWith(tmp, "[") && EndWith(tmp, "]"))
 {

  StrCpyAllowOverlap(tmp, sizeof(tmp), &tmp[1]);

  if (StrLen(tmp) >= 1)
  {
   tmp[StrLen(tmp) - 1] = 0;
  }
 }


 i = SearchStrEx(tmp, "%", 0, 0);
 if (i != INFINITE)
 {
  char ss[MAX_PATH];

  StrCpy(ss, sizeof(ss), &tmp[i + 1]);

  tmp[i] = 0;

  Trim(tmp);

  Trim(ss);

  scope_id = ToInt(ss);
 }


 t = ParseTokenWithNullStr(tmp, ":");
 if (t->NumTokens >= 3 && t->NumTokens <= 8)
 {
  UINT i, n;
  bool b = 1;
  UINT k = 0;

  n = 0;

  for (i = 0;i < t->NumTokens;i++)
  {
   char *str = t->Token[i];

   if (i != 0 && i != (t->NumTokens - 1) && StrLen(str) == 0)
   {
    n++;
    if (n == 1)
    {
     k += 2 * (8 - t->NumTokens + 1);
    }
    else
    {
     b = 0;
     break;
    }
   }
   else
   {
    UCHAR chars[2];

    if (CheckIPItemStr6(str) == 0)
    {
     b = 0;
     break;
    }

    IPItemStrToChars6(chars, str);

    a.ipv6_addr[k++] = chars[0];
    a.ipv6_addr[k++] = chars[1];
   }
  }

  if (n != 0 && n != 1)
  {
   b = 0;
  }
  else if (n == 0 && t->NumTokens != 8)
  {
   b = 0;
  }

  if (b == 0)
  {
   FreeToken(t);
   return 0;
  }
 }
 else
 {
  FreeToken(t);
  return 0;
 }

 FreeToken(t);

 Copy(ip, &a, sizeof(IP));

 ip->ipv6_scope_id = scope_id;

 return 1;
}
