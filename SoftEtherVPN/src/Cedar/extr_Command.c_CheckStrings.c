
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
struct TYPE_4__ {int NumTokens; int ** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int UINT ;


 int MAX_SIZE ;
 int Print (char*) ;
 int ToInt (char*) ;
 int UniFormat (int *,int,char*,int *,int) ;
 int UniFreeToken (TYPE_1__*) ;
 TYPE_1__* UniParseToken (int *,char*) ;
 int UniStrCpy (int *,int,char*) ;
 int UniToInt (int *) ;
 int UniToStr (char*,int,int *) ;
 int * _UU (char*) ;

bool CheckStrings()
{
 wchar_t *numstr = _UU("CHECK_TEST_123456789");
 char tmp[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];
 UINT i;
 UINT sum, sum2;
 UNI_TOKEN_LIST *t;

 UniStrCpy(tmp2, sizeof(tmp2), L"");

 sum2 = 0;
 for (i = 0;i < 64;i++)
 {
  sum2 += i;
  UniFormat(tmp2, sizeof(tmp2), L"%s,%u", tmp2, i);
 }

 t = UniParseToken(tmp2, L",");

 sum = 0;

 for (i = 0;i < t->NumTokens;i++)
 {
  wchar_t *s = t->Token[i];
  UINT n = UniToInt(s);

  sum += n;
 }

 UniFreeToken(t);

 if (sum != sum2)
 {
  Print("UniParseToken Failed.\n");
  return 0;
 }

 if (UniToInt(numstr) != 123456789)
 {
  Print("UniToInt Failed.\n");
  return 0;
 }

 UniToStr(tmp, sizeof(tmp), numstr);
 if (ToInt(tmp) != 123456789)
 {
  Print("UniToStr Failed.\n");
  return 0;
 }

 return 1;
}
