
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
struct TYPE_6__ {int NumTokens; int * Token; } ;
typedef TYPE_2__ TOKEN_LIST ;


 int CopyStrToUni (int ) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *TokenListToUniTokenList(TOKEN_LIST *src)
{
 UNI_TOKEN_LIST *ret;
 UINT i;

 if (src == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(UNI_TOKEN_LIST));
 ret->NumTokens = src->NumTokens;
 ret->Token = ZeroMalloc(sizeof(wchar_t *) * ret->NumTokens);

 for (i = 0;i < ret->NumTokens;i++)
 {
  ret->Token[i] = CopyStrToUni(src->Token[i]);
 }

 return ret;
}
