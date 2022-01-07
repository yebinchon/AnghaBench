
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
struct TYPE_6__ {int NumTokens; int * Token; } ;
typedef TYPE_2__ TOKEN_LIST ;


 int CopyUniToStr (int ) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *UniTokenListToTokenList(UNI_TOKEN_LIST *src)
{
 TOKEN_LIST *ret;
 UINT i;

 if (src == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(TOKEN_LIST));
 ret->NumTokens = src->NumTokens;
 ret->Token = ZeroMalloc(sizeof(char *) * ret->NumTokens);

 for (i = 0;i < ret->NumTokens;i++)
 {
  ret->Token[i] = CopyUniToStr(src->Token[i]);
 }

 return ret;
}
