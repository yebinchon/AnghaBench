
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int CopyStr (int ) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *CopyToken(TOKEN_LIST *src)
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
  ret->Token[i] = CopyStr(src->Token[i]);
 }

 return ret;
}
