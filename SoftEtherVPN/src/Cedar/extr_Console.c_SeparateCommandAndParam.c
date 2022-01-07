
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int* CopyUniStr (int*) ;
 char* CopyUniToStr (int*) ;
 int Free (int*) ;
 int* Malloc (int) ;
 int Trim (char*) ;
 int* UniCopyStr (int*) ;
 int UniIsEmptyStr (int*) ;
 int UniStrLen (int*) ;
 int UniTrim (int*) ;
 int UniTrimCrlf (int*) ;

bool SeparateCommandAndParam(wchar_t *src, char **cmd, wchar_t **param)
{
 UINT i, len, wp;
 wchar_t *tmp;
 wchar_t *src_tmp;

 if (src == ((void*)0))
 {
  return 0;
 }
 if (cmd != ((void*)0))
 {
  *cmd = ((void*)0);
 }
 if (param != ((void*)0))
 {
  *param = ((void*)0);
 }

 src_tmp = UniCopyStr(src);
 UniTrimCrlf(src_tmp);
 UniTrim(src_tmp);

 len = UniStrLen(src_tmp);
 tmp = Malloc(sizeof(wchar_t) * (len + 32));
 wp = 0;

 for (i = 0;i < (len + 1);i++)
 {
  wchar_t c = src_tmp[i];

  switch (c)
  {
  case 0:
  case L' ':
  case L'\t':
   tmp[wp] = 0;
   if (UniIsEmptyStr(tmp))
   {
    Free(tmp);
    Free(src_tmp);
    return 0;
   }
   if (cmd != ((void*)0))
   {
    *cmd = CopyUniToStr(tmp);
    Trim(*cmd);
   }
   goto ESCAPE;

  default:
   tmp[wp++] = c;
   break;
  }
 }

ESCAPE:
 if (param != ((void*)0))
 {
  *param = CopyUniStr(&src_tmp[wp]);
  UniTrim(*param);
 }

 Free(tmp);
 Free(src_tmp);

 return 1;
}
