
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;


 int Free (char*) ;
 char* UniCopyStr (char*) ;
 TYPE_1__* UniParseToken (char*,char*) ;
 int UniTrim (char*) ;
 int UniTrimCrlf (char*) ;

UNI_TOKEN_LIST *ParseSplitedPathW(wchar_t *path)
{
 UNI_TOKEN_LIST *ret;
 wchar_t *tmp = UniCopyStr(path);
 wchar_t *split_str;
 UINT i;

 UniTrim(tmp);
 UniTrimCrlf(tmp);
 UniTrim(tmp);
 UniTrimCrlf(tmp);




 split_str = L":";


 ret = UniParseToken(tmp, split_str);

 if (ret != ((void*)0))
 {
  for (i = 0;i < ret->NumTokens;i++)
  {
   UniTrim(ret->Token[i]);
   UniTrimCrlf(ret->Token[i]);
   UniTrim(ret->Token[i]);
   UniTrimCrlf(ret->Token[i]);
  }
 }

 Free(tmp);

 return ret;
}
