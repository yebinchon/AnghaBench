
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Free (int *) ;
 int * Malloc (int) ;
 int UniGetLine (int *,int) ;
 int UniToStr (char*,int,int *) ;

bool GetLine(char *str, UINT size)
{
 bool ret;
 wchar_t *unistr;
 UINT unistr_size = (size + 1) * sizeof(wchar_t);

 unistr = Malloc(unistr_size);

 ret = UniGetLine(unistr, unistr_size);

 UniToStr(str, size, unistr);

 Free(unistr);

 return ret;
}
