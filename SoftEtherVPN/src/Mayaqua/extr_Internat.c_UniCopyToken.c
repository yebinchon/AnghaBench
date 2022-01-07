
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
typedef int TOKEN_LIST ;


 int CopyUniStr (int ) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *UniCopyToken(UNI_TOKEN_LIST *src)
{
 UNI_TOKEN_LIST *ret;
 UINT i;

 if (src == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(TOKEN_LIST));
 ret->NumTokens = src->NumTokens;
 ret->Token = ZeroMalloc(sizeof(wchar_t *) * ret->NumTokens);
 for (i = 0;i < ret->NumTokens;i++)
 {
  ret->Token[i] = CopyUniStr(src->Token[i]);
 }

 return ret;
}
