
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {void* Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int TOKEN_LIST ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int FreeToken (int *) ;
 int * ParseToken (char*,char*) ;
 TYPE_1__* TokenListToUniTokenList (int *) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *UnixUniParseToken(wchar_t *src, wchar_t *separator)
{
 UNI_TOKEN_LIST *ret;
 TOKEN_LIST *t;
 char *src_s;
 char *sep_s;


 if (src == ((void*)0) || separator == ((void*)0))
 {
  ret = ZeroMalloc(sizeof(UNI_TOKEN_LIST));
  ret->Token = ZeroMalloc(0);
  return ret;
 }

 src_s = CopyUniToStr(src);
 sep_s = CopyUniToStr(separator);

 t = ParseToken(src_s, sep_s);

 ret = TokenListToUniTokenList(t);
 FreeToken(t);

 Free(src_s);
 Free(sep_s);

 return ret;
}
