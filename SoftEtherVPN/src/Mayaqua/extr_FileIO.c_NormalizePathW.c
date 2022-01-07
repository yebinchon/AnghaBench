
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int cd ;
struct TYPE_9__ {size_t NumTokens; int** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
struct TYPE_10__ {int num_item; scalar_t__* p; } ;
typedef TYPE_2__ SK ;


 int ConvertPathW (int*) ;
 int GetHomeDirW (int*,int) ;
 int MAX_SIZE ;
 TYPE_2__* NewSk () ;
 int Pop (TYPE_2__*) ;
 int Push (TYPE_2__*,int*) ;
 int ReleaseSk (TYPE_2__*) ;
 int UniFreeToken (TYPE_1__*) ;
 TYPE_1__* UniParseToken (int*,char*) ;
 scalar_t__ UniStartWith (int*,char*) ;
 int UniStrCat (int*,int,...) ;
 scalar_t__ UniStrCmpi (int*,char*) ;
 int UniStrCpy (int*,size_t,...) ;
 int UniStrLen (int*) ;
 int UniTrim (int*) ;
 int UnixGetCurrentDirW (int*,int) ;
 int Win32GetCurrentDirW (int*,int) ;
 int Zero (int*,int) ;

void NormalizePathW(wchar_t *dst, UINT size, wchar_t *src)
{
 wchar_t tmp[MAX_SIZE];
 UNI_TOKEN_LIST *t;
 bool first_double_slash = 0;
 bool first_single_slash = 0;



 bool is_full_path = 0;
 UINT i;
 SK *sk;

 if (dst == ((void*)0) || src == 0)
 {
  return;
 }


 UniStrCpy(tmp, sizeof(tmp), src);
 ConvertPathW(tmp);
 UniTrim(tmp);


 if (UniStartWith(tmp, L"./") || UniStartWith(tmp, L".\\") ||
  UniStartWith(tmp, L"../") || UniStartWith(tmp, L"..\\") ||
  UniStrCmpi(tmp, L".") == 0 || UniStrCmpi(tmp, L"..") == 0)
 {
  wchar_t cd[MAX_SIZE];
  Zero(cd, sizeof(cd));




  UnixGetCurrentDirW(cd, sizeof(cd));


  if (UniStartWith(tmp, L".."))
  {
   UniStrCat(cd, sizeof(cd), L"/../");
   UniStrCat(cd, sizeof(cd), tmp + 2);
  }
  else
  {
   UniStrCat(cd, sizeof(cd), L"/");
   UniStrCat(cd, sizeof(cd), tmp);
  }

  UniStrCpy(tmp, sizeof(tmp), cd);
 }


 if (UniStartWith(tmp, L"~/") || UniStartWith(tmp, L"~\\"))
 {
  wchar_t tmp2[MAX_SIZE];
  GetHomeDirW(tmp2, sizeof(tmp2));
  UniStrCat(tmp2, sizeof(tmp2), L"/");
  UniStrCat(tmp2, sizeof(tmp2), tmp + 2);
  UniStrCpy(tmp, sizeof(tmp), tmp2);
 }

 if (UniStartWith(tmp, L"//") || UniStartWith(tmp, L"\\\\"))
 {

  first_double_slash = 1;
  is_full_path = 1;
 }
 else if (UniStartWith(tmp, L"/") || UniStartWith(tmp, L"\\"))
 {

  first_single_slash = 1;
  is_full_path = 1;
 }
 if (UniStrLen(tmp) == 1 && (tmp[0] == L'/' || tmp[0] == L'\\'))
 {
  tmp[0] = 0;
 }


 t = UniParseToken(tmp, L"/\\");

 sk = NewSk();

 for (i = 0;i < t->NumTokens;i++)
 {
  wchar_t *s = t->Token[i];

  if (UniStrCmpi(s, L".") == 0)
  {
   continue;
  }
  else if (UniStrCmpi(s, L"..") == 0)
  {
   if (sk->num_item >= 1 && (first_double_slash == 0 || sk->num_item >= 2))
   {
    Pop(sk);
   }
  }
  else
  {
   Push(sk, s);
  }
 }


 UniStrCpy(tmp, sizeof(tmp), L"");

 if (first_double_slash)
 {
  UniStrCat(tmp, sizeof(tmp), L"//");
 }
 else if (first_single_slash)
 {
  UniStrCat(tmp, sizeof(tmp), L"/");
 }
 for (i = 0;i < sk->num_item;i++)
 {
  UniStrCat(tmp, sizeof(tmp), (wchar_t *)sk->p[i]);
  if (i != (sk->num_item - 1))
  {
   UniStrCat(tmp, sizeof(tmp), L"/");
  }
 }

 ReleaseSk(sk);

 UniFreeToken(t);

 ConvertPathW(tmp);

 UniStrCpy(dst, size, tmp);
}
