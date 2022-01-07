
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int t ;
typedef int UINT64 ;
typedef int UINT ;
struct TYPE_8__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
struct TYPE_7__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ SYSTEMTIME ;


 int FreeToken (TYPE_1__*) ;
 int INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int SystemToUINT64 (TYPE_2__*) ;
 int ToInt (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT64 StrToDateTime64(char *str)
{
 UINT64 ret = 0;
 TOKEN_LIST *t;
 UINT a, b, c, d, e, f;

 if (str == ((void*)0))
 {
  return INFINITE;
 }

 if (IsEmptyStr(str) || StrCmpi(str, "none") == 0)
 {
  return 0;
 }

 t = ParseToken(str, ":/,. \"");
 if (t->NumTokens != 6)
 {
  FreeToken(t);
  return INFINITE;
 }

 a = ToInt(t->Token[0]);
 b = ToInt(t->Token[1]);
 c = ToInt(t->Token[2]);
 d = ToInt(t->Token[3]);
 e = ToInt(t->Token[4]);
 f = ToInt(t->Token[5]);

 ret = INFINITE;

 if (a >= 1000 && a <= 9999 && b >= 1 && b <= 12 && c >= 1 && c <= 31 &&
  d <= 23 && e <= 59 && f <= 59)
 {
  SYSTEMTIME t;

  Zero(&t, sizeof(t));
  t.wYear = a;
  t.wMonth = b;
  t.wDay = c;
  t.wHour = d;
  t.wMinute = e;
  t.wSecond = f;

  ret = SystemToUINT64(&t);
 }

 FreeToken(t);

 return ret;
}
