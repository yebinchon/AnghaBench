
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nTokens; int * a; } ;
typedef TYPE_1__ tDCLSQL ;
typedef int SSQLToken ;


 TYPE_1__* calloc (int,int) ;
 int tTokenListBuyMoreSpace (TYPE_1__*) ;

tDCLSQL *tTokenListAppend(tDCLSQL *pTokenList, SSQLToken *pToken) {
  if (pToken == ((void*)0)) return ((void*)0);

  if (pTokenList == ((void*)0)) pTokenList = calloc(1, sizeof(tDCLSQL));

  tTokenListBuyMoreSpace(pTokenList);
  pTokenList->a[pTokenList->nTokens++] = *pToken;

  return pTokenList;
}
