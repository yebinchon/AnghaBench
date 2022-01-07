
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int UINT ;


 char* CopyUtfToUni (char*) ;
 int Free (char*) ;
 int UniStrCpy (char*,int ,char*) ;
 int UniStrLen (char*) ;

UINT UtfToUni(wchar_t *unistr, UINT size, char *utfstr)
{
 wchar_t *tmp;

 if (unistr == ((void*)0) || utfstr == ((void*)0))
 {
  UniStrCpy(unistr, size, L"");
  return 0;
 }

 tmp = CopyUtfToUni(utfstr);

 UniStrCpy(unistr, size, tmp);

 Free(tmp);

 return UniStrLen(unistr);
}
