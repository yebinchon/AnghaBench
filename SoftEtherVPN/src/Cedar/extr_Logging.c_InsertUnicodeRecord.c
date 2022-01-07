
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;
typedef int LOG ;
typedef int BYTE ;


 scalar_t__ CalcUniToUtf8 (int *) ;
 int Free (char*) ;
 int InsertStringRecord (int *,char*) ;
 int UniToUtf8 (int *,scalar_t__,int *) ;
 char* ZeroMalloc (scalar_t__) ;

void InsertUnicodeRecord(LOG *g, wchar_t *unistr)
{
 char *str;
 UINT size;

 if (g == ((void*)0) || unistr == ((void*)0))
 {
  return;
 }

 size = CalcUniToUtf8(unistr) + 32;
 str = ZeroMalloc(size);

 UniToUtf8((BYTE *)str, size, unistr);
 InsertStringRecord(g, str);
 Free(str);
}
