
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;
typedef int BYTE ;


 scalar_t__ CalcUtf8ToUni (int *,scalar_t__) ;
 scalar_t__ StrLen (char*) ;
 int Utf8ToUni (int *,scalar_t__,int *,scalar_t__) ;
 int * ZeroMalloc (scalar_t__) ;

wchar_t *CopyUtfToUni(char *utfstr)
{
 UINT size;
 wchar_t *ret;
 UINT utfstr_len;

 if (utfstr == ((void*)0))
 {
  return ((void*)0);
 }

 utfstr_len = StrLen(utfstr);

 size = CalcUtf8ToUni((BYTE *)utfstr, utfstr_len);
 ret = ZeroMalloc(size + sizeof(wchar_t));
 Utf8ToUni(ret, size, (BYTE *)utfstr, utfstr_len);

 return ret;
}
